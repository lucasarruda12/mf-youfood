/* Queue_ctx
 * Author: lucas.arruda.125
 * Creation date: 23/11/2026
 */
MACHINE
    Queue_ctx

SETS
  PRODUCT

CONCRETE_CONSTANTS
  QUEUE_SIZE , pp0

PROPERTIES
  QUEUE_SIZE : NAT &
  pp0 : PRODUCT &
  QUEUE_SIZE >= 1

END
