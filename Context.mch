/* Context
 * Author: lucas.arruda.125
 * Creation date: 23/11/2026
 */
MACHINE
    Context

SEES
    Queue_ctx

SETS
    USER;
    ADDRESS;
    ORDER_STATE = {PLACED, PREPARING, READY, MOVING, DELIVERED};
    DRIVER_STATE = {AVAILABLE, BUSY}

CONSTANTS
    MAX_ORDERS,
    MAX_STORAGE,
    DRIVERS,
    ROUTE_SIZE,
    MAX_DISTANCE,
    default_addr,
    default_user

PROPERTIES
    MAX_ORDERS : NAT1 &
    MAX_STORAGE : NAT1 &
    DRIVERS : NAT1 &
    ROUTE_SIZE : NAT1 &
    MAX_DISTANCE : NAT &
    default_addr : ADDRESS &
    default_user : USER

END