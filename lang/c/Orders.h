#ifndef _Orders_h
#define _Orders_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Context.h"
#include "Queue_ctx.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void Orders__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Orders__create_order(int32_t prod_qty, Context__ADDRESS aa, Context__USER uu, int32_t *oid);
extern void Orders__mark_order_ready(int32_t oid);
extern void Orders__mark_order_moving(int32_t oid);
extern void Orders__mark_order_delivered(int32_t oid);
extern void Orders__get_order_state(int32_t oid, Context__ORDER_STATE *st);
extern void Orders__get_order_user(int32_t oid, Context__USER *uu);
extern void Orders__get_order_address(int32_t oid, Context__ADDRESS *aa);
extern void Orders__order_exists(int32_t oid, bool *ex);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Orders_h */
