#ifndef _Queue_ctx_h
#define _Queue_ctx_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Queue_ctx__PRODUCT__max 10
/* Clause SETS */
typedef int Queue_ctx__PRODUCT;

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
#define Queue_ctx__QUEUE_SIZE 30
#define Queue_ctx__pp0 3
/* Array and record constants */



/* Clause CONCRETE_VARIABLES */

extern void Queue_ctx__INITIALISATION(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Queue_ctx_h */
