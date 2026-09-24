MACHINE YOUFOOD

SETS
    PRODUCT; USER;
    ORDER_STATE = {PLACED, PREPARING, READY, MOVING, DELIVERED};
    DRIVER_STATE = {AVAILABLE, BUSY}

CONSTANTS
  QUEUE_SIZE,
  MAX_STORAGE,
  DRIVERS,
  MAX_DISTANCE

PROPERTIES
  QUEUE_SIZE : NAT &
  DRIVERS : NAT &
  ROUTE_SIZE : NAT &
  MAX_DISTANCE : NAT

VARIABLES
    queue, begin, end, sze, what, where, who, state, current_ident

INVARIANT
    queue : 0..QUEUE_SIZE --> NAT &
    begin : 0..QUEUE_SIZE &
    end : 0..QUEUE_SIZE &
    sze: 0..(QUEUE_SIZE + 1) &
    what : NAT +-> POW(PRODUCT) &
    where : NAT +-> (NAT * NAT) & // ISSO AQUI MUDA (DISTANCIA ENTRE DOIS PONTOS)
    who : NAT +-> USER &
    order_state : NAT +-> ORDER_STATE &
    current_ident : NAT &

    dom(what) = dom(where) &
    dom(where) = dom(who) &
    dom(who) = dom(order_state) &

    driver_state : 0..DRIVERS +-> DRIVER_STATE &
    driver_storage : 0..DRIVERS +-> NAT &
    driver_route : 0..DRIVERS +-> (0..MAX_ROUTE --> NAT) &

    // !dd. (dd : 0..DRIVERS -> driver_storage(dd) < MAX_STORAGE) &
    // !dd. (dd : 0..DRIVERS & driver_state(dd) = AVAILABLE -> driver_route(dd) = {})
    // !dd. dd : 0..DRIVERS -> !ii. ii < MAX_ROUTE -> !jj. jj < MAX_ROUTE -> 
      // let xx = 
    // Pensar em mais invariantes!!!

INITIALISATION
    queue, what, where, who, order_state, current_ident 
	:= (0..29) * {0}, {}, {}, {}, {}, 1;
    begin, end, sze := 0,0,0

OPERATIONS

make_request(pps, aa, uu) =
  PRE
    pps : POW(PRODUCT) &
    aa : ADDRESS &
    uu : USER &
    sze < 30 &
    (!pp. pp : dom(queue) -> who(pp) /= uu)
  THEN
    queue(end) := current_ident ||
    end := end + 1 ||
    sze := sze + 1 ||

    what := what \/ {current_ident |-> pps} ||
    where := where \/ {current_ident |-> aa} ||
    who := who \/ {current_ident |-> uu} ||
    order_state := order_state \/ {current_ident |-> PREPARING} ||
    current_ident := current_ident + 1
  END;

ready_order(ii) =
  PRE
    ii : NAT &
    ii : dom(order_state) &
    order_state(ii) = PREPARING
  THEN
     order_state(ii) := READY
  END;

// TODO
assign_order(ii, dd) =
  PRE
    ii : NAT & dd : NAT &
    ii : dom(order_state) &
    order_state(ii) = READY
    // TEM QUE SE PREOCUPAR TAMBÉM COM A DISTANCIA ENTRE OS PONTOS DA ENTREGA
  THEN
    order_state := order_state
    // remover o pedido da queue
    // aumentar o storage
  END;

send_driver(dd) = 
  PRE
    dd : dom(driver_state) &
    dd : dom(driver_storage) &
    dd : dom(driver_route) &
    driver_state(dd) = AVAILABLE &
    driver_storage(dd) > 0
  THEN
    driver_state(dd) := BUSY ||
    order_state := order_state <+ (ran(driver_route(dd)) * {MOVING})
  END;

deliver_order(ii, dd) =
  // Muda o estado do pedido
  // Diminui o storage
  order_state := order_state

// TODO
driver_return(dd) =
  // mudar o estado do motorista
  // o storage tem que estar vazio
  order_state := order_state

END