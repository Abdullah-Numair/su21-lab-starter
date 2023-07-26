#include <stdio.h>
struct data {
        char name[20];
        int id;
        int age;
};

int main() {
    struct data d1;
    printf("Name: ");
    gets(d1.name);
    printf("\nID: ");
    scanf("%d" , &d1.id);
    printf("\nAge: ");
    scanf("%d" , &d1.age);

    printf("\n\nStructure Data is:\n%s\n%d\n%d", d1.name, d1.id, d1.age);

return 0;
}
