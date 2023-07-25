#include <stddef.h>
#include "/home/user103/su21-lab-starter/lab01/exercise4/ll_cycle.h"

int ll_has_cycle(node *head) {
    /* TODO: Implement ll_has_cycle */
  if ( head == NULL ) {
    return 0;
  }

  node *fast_ptr, *slow_ptr;
  slow_ptr = head;
  fast_ptr = head->next;

  while ( fast_ptr != NULL && fast_ptr->next != NULL ) {
    if (fast_ptr == slow_ptr)
      return 1;

    slow_ptr = slow_ptr->next;
    fast_ptr = fast_ptr->next->next;
  }
  return 0;
}
