#ifndef _Context_h
#define _Context_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Queue_ctx.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* TODO : #define Context__USER__max */
/* TODO : #define Context__ADDRESS__max */
/* Clause SETS */
typedef int Context__USER;
typedef int Context__ADDRESS;
typedef enum
{
    Context__PLACED,
    Context__PREPARING,
    Context__READY,
    Context__MOVING,
    Context__DELIVERED
    
} Context__ORDER_STATE;
#define Context__ORDER_STATE__max 5
typedef enum
{
    Context__AVAILABLE,
    Context__BUSY
    
} Context__DRIVER_STATE;
#define Context__DRIVER_STATE__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* TO DO: #define Context__MAX_ORDERS */
/* TO DO: #define Context__MAX_STORAGE */
/* TO DO: #define Context__DRIVERS */
/* TO DO: #define Context__ROUTE_SIZE */
/* TO DO: #define Context__MAX_DISTANCE */
/* TO DO: #define Context__default_addr */
/* TO DO: #define Context__default_user */
/* Array and record constants */








/* Clause CONCRETE_VARIABLES */

extern void Context__INITIALISATION(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Context_h */
