/* Orders
 * Author: jorgelino
 * Creation date: 26/11/2026
 */
MACHINE
    Orders

SEES
    Context ,
    Queue_ctx

ABSTRACT_VARIABLES
    what ,
    where ,
    who ,
    order_state ,
    current_ident

INVARIANT
    what : NAT1 +-> NAT &
    where : NAT1 +-> ADDRESS &
    who : NAT1 +-> USER &
    order_state : NAT1 +-> ORDER_STATE &
    current_ident : NAT1 &

    dom ( what ) = dom ( order_state ) &
    dom ( where ) = dom ( order_state ) &
    dom ( who ) = dom ( order_state ) &
    card ( order_state ) <= MAX_ORDERS &
    ! ( oid ) . ( oid : dom ( order_state ) => oid < current_ident )

INITIALISATION
    what := {} ||
    where := {} ||
    who := {} ||
    order_state := {} ||
    current_ident := 1

OPERATIONS

oid <-- create_order ( prod_qty , aa , uu ) =
  PRE
    prod_qty : NAT &
    aa : ADDRESS &
    uu : USER &
    card ( order_state ) < MAX_ORDERS
  THEN
    oid := current_ident ||
    what := what \/ { current_ident |-> prod_qty } ||
    where := where \/ { current_ident |-> aa } ||
    who := who \/ { current_ident |-> uu } ||
    order_state := order_state \/ { current_ident |-> PREPARING } ||
    current_ident := current_ident + 1
  END ;

mark_order_ready ( oid ) =
  PRE
    oid : NAT1 &
    oid : dom ( order_state ) &
    order_state ( oid ) = PREPARING
  THEN
    order_state ( oid ) := READY
  END ;

mark_order_moving ( oid ) =
  PRE
    oid : NAT1 &
    oid : dom ( order_state ) &
    order_state ( oid ) = READY
  THEN
    order_state ( oid ) := MOVING
  END ;

mark_order_delivered ( oid ) =
  PRE
    oid : NAT1 &
    oid : dom ( order_state ) &
    order_state ( oid ) = MOVING
  THEN
    order_state ( oid ) := DELIVERED
  END ;

st <-- get_order_state ( oid ) =
  PRE
    oid : NAT1 &
    oid : dom ( order_state )
  THEN
    st := order_state ( oid )
  END ;

uu <-- get_order_user ( oid ) =
  PRE
    oid : NAT1 &
    oid : dom ( who )
  THEN
    uu := who ( oid )
  END ;

aa <-- get_order_address ( oid ) =
  PRE
    oid : NAT1 &
    oid : dom ( where )
  THEN
    aa := where ( oid )
  END ;

ex <-- order_exists ( oid ) =
  PRE
    oid : NAT1
  THEN
    IF oid : dom ( order_state ) THEN
      ex := TRUE
    ELSE
      ex := FALSE
    END
  END

END
