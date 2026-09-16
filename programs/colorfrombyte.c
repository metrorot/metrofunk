#include <stdio.h>

int main()
{
    int r, g, b;

    while (1)
    {
        printf("\nR >");
        scanf("%d", &r);

        printf("G >");
        scanf("%d", &g);

        printf("B >");
        scanf("%d", &b);

        printf("\nYour color: { %d, %d, %d }\n", (r / 255), (g / 255), (b / 255));
    }

    return 0;
}
