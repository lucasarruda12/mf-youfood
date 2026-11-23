/* Queue
 * Author: lucas.arruda.125
 * Creation date: 23/11/2026
 */
MACHINE
    Queue

SEES
    Queue_ctx

ABSTRACT_VARIABLES contents

INVARIANT         contents : seq ( PRODUCT ) & size ( contents ) <= QUEUE_SIZE

INITIALISATION    contents := []

OPERATIONS

push ( ee ) =
  PRE ee : PRODUCT & size ( contents ) < QUEUE_SIZE
  THEN contents := contents <- ee
  END ;

ee <-- pop =
  PRE size ( contents ) > 0
  THEN ee := first ( contents ) || contents := tail ( contents )
  END


END
