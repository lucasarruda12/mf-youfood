MACHINE YOUFOOD

SETS
    PRODUCT; ADDRESS; USER;
    ORDER_STATE = {PLACED, PREPARING, READY, DELIVERED}

VARIABLES
    queue, begin, end, sze, what, where, who, state, current_ident

INVARIANT  
    queue : 0..29 --> NAT &
    begin : 0..29 &
    end : 0..29 &
    sze: 0..29 &
    what : NAT +-> POW(PRODUCT) &
    where : NAT +-> ADDRESS &
    who : NAT +-> USER &
    state : NAT +-> ORDER_STATE &
    current_ident : NAT

INITIALISATION
    queue, what, where, who, state, current_ident 
	:= (0..29) * {0}, {}, {}, {}, {}, 1;
    begin, end, sze := 0,0,0

OPERATIONS

make_request(pps, aa, uu) =
  PRE
    pps : POW(PRODUCT) &
    aa : ADDRESS &
    uu : USER &
    uu /: ran(who)
  THEN
    queue(end) := current_ident ||
    begin := begin + 1 ||
    end := end + 1 ||
    sze := sze + 1 ||

    what := what \/ {current_ident |-> pps} ||
    where := where \/ {current_ident |-> aa} ||
    who := who \/ {current_ident |-> uu} ||
    state := state \/ {current_ident |-> PREPARING} ||
    current_ident := current_ident + 1
  END;

ready_order(ident) =
  PRE
    ident : NAT &
    ident : dom(state) &
    state(ident) = PREPARING
  THEN
     state(ident) := READY
  END;

deliver_order(ident) =
  PRE
    ident : NAT &
    ident : dom(state) &
    state(ident) = READY &
    sze > 0 &
    queue(end - 1) = ident 
  THEN
    state(ident) := DELIVERED ||
    end := end - 1 ||
    sze := sze - 1
  END

END