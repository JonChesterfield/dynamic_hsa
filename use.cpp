
#include "include/hsa.h"

int main()
{
  if (hsa_status_t rc = hsa_init()) {
    return 1;
  }
  hsa_shut_down();
}
