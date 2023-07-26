#include <stdio.h>

static inline int func() {
    return 5;
}

int main() {
    printf("Integer is: %d\n", func());
    return 0;
}
