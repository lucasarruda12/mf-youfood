MACHINE YOUFOOD

SETS
    PRODUCT; ADDRESS; USER;
    ORDER_STATE = {PREPARING, READY, MOVING, DELIVERED}

VARIABLES
    queue, where, who, state, current_ident

INVARIANT  
    queue : NAT --> 0..30 &
    what : NAT --> POW(PRODUCT) &
    where : NAT --> ADDRESS &
    who : NAT --> USER &
    state : NAT --> ORDER_STATE
    current_ident : NAT

INITIALISATION
    queue, what, where, who, state, current_ident 
	:= {}, {}, {}, {}, {}, 0

OPERATIONS

make_request(pps, aa, uu) =
  PRE 
    pps : POW(PRODUCT) &
    aa : ADDRESS &
    uu : USER &
    uu /: ran(who)
  THEN
    queue := queue ^ [current_ident] ||
    where := where \/ {current_ident |-> aa} ||
    who := where \/ {current_ident |-> uu} ||
    current_ident := current_ident + 1
  END

END