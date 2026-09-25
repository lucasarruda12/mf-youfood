MACHINE Youfood

SETS
    PRODUCT; USER; ADDRESS;
    ORDER_STATE = {PREPARING, READY, MOVING, DELIVERED};
    DRIVER_STATE = {AVAILABLE, BUSY}

CONSTANTS
  QUEUE_SIZE,
  MAX_STORAGE,
  DRIVERS,
  MAX_DISTANCE,
  MAX_ROUTE,
  dist

PROPERTIES
  QUEUE_SIZE : NAT &
  MAX_STORAGE : NAT &
  DRIVERS : NAT &
  MAX_ROUTE : NAT &
  MAX_DISTANCE : NAT &
  dist : (ADDRESS * ADDRESS) --> 0..MAX_DISTANCE &

  QUEUE_SIZE = 5 &
  MAX_STORAGE = 10 &
  DRIVERS = 2 &
  MAX_ROUTE = 3 &
  MAX_DISTANCE = 15 &

  card(PRODUCT) = 2 &
  card(USER) = 3 &
  card(ADDRESS) = 3

VARIABLES
    queue, begin, end, sze, what, where, who, current_ident,
    order_state, driver_state, driver_storage, driver_route,
    driver_route_len

INVARIANT
    queue : 0..QUEUE_SIZE --> NAT &
    begin : 0..QUEUE_SIZE &
    end : 0..QUEUE_SIZE &
    sze: 0..(QUEUE_SIZE + 1) &
    what : NAT +-> POW(PRODUCT) &
    where : NAT +-> ADDRESS &
    who : NAT +-> USER &
    order_state : NAT +-> ORDER_STATE &
    current_ident : NAT &

    dom(what) = dom(where) &
    dom(where) = dom(who) &
    dom(who) = dom(order_state) &

    driver_state : 0..DRIVERS --> DRIVER_STATE &
    driver_storage : 0..DRIVERS --> 0..MAX_STORAGE &
    driver_route : 0..DRIVERS --> (0..MAX_ROUTE --> NAT) &
    driver_route_len : 0..DRIVERS --> 0..(MAX_ROUTE + 1) &

    /* Na fila só tem coisas válidas */
    ran(queue) - {0} <: dom(order_state) &

    /* Os entregadores só levam coisas válidas */
    !(dd).(dd : 0..DRIVERS => ran(driver_route(dd)) - {0} <: dom(order_state)) &

    /* Array com default value 0 para vagas livres até MAX_ROUTE */
    !(dd, ii).(dd : 0..DRIVERS & ii : 0..(driver_route_len(dd) - 1) => 
      driver_route(dd)(ii) /= 0) &
    !(dd, ii).(dd : 0..DRIVERS & ii : driver_route_len(dd)..MAX_ROUTE => 
      driver_route(dd)(ii) = 0) &

    /* Entregadores sem nada na bag não devem estar carregando nada */
    !(dd).(dd : 0..DRIVERS & driver_state(dd) = AVAILABLE & driver_route_len(dd) = 0 => 
      driver_storage(dd) = 0 & driver_route(dd) = (0..MAX_ROUTE) * {0})  &

    /* Todos os pedidos na bag estão prontos ou em movimento */
    !(dd, ii).(dd : 0..DRIVERS & 
      ii : 0..(driver_route_len(dd) - 1) &
      driver_route(dd)(ii) : dom(order_state) => 
      order_state(driver_route(dd)(ii)) : {READY, MOVING}) &

    /* Todos os itens ativos numa bag têm o mesmo estado */
    !(dd, ii1, ii2).(dd : 0..DRIVERS & 
      ii1 : 0..(driver_route_len(dd) - 1) & 
      ii2 : 0..(driver_route_len(dd) - 1) &
      driver_route(dd)(ii1) : dom(order_state) &
      driver_route(dd)(ii2) : dom(order_state) &
      order_state(driver_route(dd)(ii1)) /= DELIVERED &
      order_state(driver_route(dd)(ii2)) /= DELIVERED => 
        order_state(driver_route(dd)(ii1)) = order_state(driver_route(dd)(ii2)))

INITIALISATION
    queue := (0..QUEUE_SIZE) * {0} ||
    begin := 0 ||
    end := 0 ||
    sze := 0 ||
    what := {} ||
    where := {} ||
    who := {} ||
    order_state := {} ||
    current_ident := 1 ||
    driver_state := (0..DRIVERS) * {AVAILABLE} ||
    driver_storage := (0..DRIVERS) * {0} ||
    driver_route := (0..DRIVERS) * {(0..MAX_ROUTE) * {0}} ||
    driver_route_len := (0..DRIVERS) * {0}

OPERATIONS

make_request(pps, aa, uu) =
  PRE
    pps : POW(PRODUCT) & pps /= {} &
    aa : ADDRESS &
    uu : USER &    
    sze < QUEUE_SIZE &
    !(ii).(ii : dom(who) & order_state(ii) /= DELIVERED => who(ii) /= uu)
  THEN
    queue(end) := current_ident ||
    end := (end + 1) mod QUEUE_SIZE ||
    sze := sze + 1 ||

    what(current_ident) := pps ||
    where(current_ident) := aa ||
    who(current_ident) := uu ||
    order_state(current_ident) := PREPARING ||
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

assign_order(ii, dd) =
  PRE
    ii : dom(order_state) &
    order_state(ii) = READY &
    
    sze > 0 &
    ii = queue(begin) &

    dd : 0..DRIVERS &
    driver_state(dd) = AVAILABLE &
    
    driver_storage(dd) + card(what(ii)) <= MAX_STORAGE &
    
    /* 3. Precondition ensures room exists up to MAX_ROUTE */
    driver_route_len(dd) <= MAX_ROUTE &

    (driver_route_len(dd) > 0 => 
      driver_route(dd)(driver_route_len(dd) - 1) : dom(where) &
      dist(where(driver_route(dd)(driver_route_len(dd) - 1)), where(ii)) <= MAX_DISTANCE)
  THEN
    queue(begin) := 0 ||
    begin := (begin + 1) mod QUEUE_SIZE ||
    sze := sze - 1 ||

    driver_storage(dd) := driver_storage(dd) + card(what(ii)) ||
    driver_route(dd)(driver_route_len(dd)) := ii ||
    driver_route_len(dd) := driver_route_len(dd) + 1
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
    /* Update non-zero assigned route order states to MOVING */
    order_state := order_state <+ ((ran(driver_route(dd)) - {0}) * {MOVING})
  END;

deliver_order(ii, dd) =
  PRE
    ii : dom(order_state) &
    dd : dom(driver_state) &
    dd : dom(driver_storage) &
    order_state(ii) = MOVING &
    driver_state(dd) = BUSY &
    driver_storage(dd) > 0
  THEN
    order_state(ii) := DELIVERED ||
    driver_storage(dd) := driver_storage(dd) - card(what(ii))
  END;

driver_return(dd) =
  PRE
    dd : dom(driver_state) &
    dd : dom(driver_storage) &
    driver_state(dd) = BUSY &
    driver_storage(dd) = 0
  THEN
    driver_state(dd) := AVAILABLE ||
    driver_route(dd) := (0..MAX_ROUTE) * {0} ||
    driver_route_len(dd) := 0
  END

END