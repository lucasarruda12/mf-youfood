#ifndef _Queue_h
#define _Queue_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Queue_ctx.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void Queue__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Queue__push(Queue_ctx__PRODUCT ee);
extern void Queue__pop(Queue_ctx__PRODUCT *ee);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Queue_h */
