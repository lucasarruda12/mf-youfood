/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Queue.h"

/* Clause SEES */
#include "Queue_ctx.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

#define Queue__max_array_size Queue_ctx__QUEUE_SIZE-1
/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Queue_ctx__PRODUCT Queue__array[Queue__max_array_size+1];
static int32_t Queue__sze;
static int32_t Queue__pos;
/* Clause INITIALISATION */
void Queue__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= Queue__max_array_size;i++)
    {
        Queue__array[i] = Queue_ctx__pp0;
    }
    Queue__sze = 0;
    Queue__pos = 0;
}

/* Clause OPERATIONS */

void Queue__push(Queue_ctx__PRODUCT ee)
{
    Queue__array[(Queue__sze+Queue__pos) % Queue_ctx__QUEUE_SIZE] = ee;
    Queue__sze = Queue__sze+1;
}

void Queue__pop(Queue_ctx__PRODUCT *ee)
{
    (*ee) = Queue__array[Queue__pos];
    Queue__pos = Queue__pos+1;
    Queue__sze = Queue__sze+1;
}

