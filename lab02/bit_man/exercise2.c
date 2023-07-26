#include <stdio.h>

#define CSR_VAL 0x8000abcd00001234UL

#define ADDRESS 0x5300f000U

unsigned long int my_csr = CSR_VAL;

int main(void) {
  // (a) here:
  my_csr|=1;

  // (b) here:
  my_csr = my_csr & ~4;

  // (c) here:
  my_csr = ((my_csr & 0xffffffffffff00ff) | 0x000000000000ee00);

  // (d) here:
  unsigned long int extract;
  extract = ((ADDRESS >> 12) & 0x0000ffff) << 16;
  my_csr = ((my_csr & 0xffffffff0000ffff) | extract);


  printf("%lx \n", my_csr);

  return 0;
}
