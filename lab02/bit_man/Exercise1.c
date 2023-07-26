#include <stdio.h>

int odd_func(int *a, int len) {
    int n = 0;
  for (int i = 0; i < len; i++) {
    n^=a[i];
  }
  return n;
}

int main() {
    int arr[]={12, 12, 14, 90, 14, 14, 14};
    printf("Number is: %d\n", odd_func(arr, (sizeof(arr)/sizeof(arr[0]))));
    return 0;
}
