#include<stdio.h>
#include<stdlib.h>
int result (int x, int j, int storage[]);

int main()
{
    FILE*yo;
    int x;

    printf("\nenter a number: ");
    scanf("%d", &x);

    yo = fopen("input.in", "r");


    if (yo == NULL)
    {
        printf("FILE NOT FOUND");
        return -1;
    }

    int i=0;
    int j=18000; int storage[j];
    while(!feof(yo))
    {
        fscanf(yo,"%d",&storage[i]);

        i++;
        if(feof(yo))
        {
            storage[i] = '\0';
        }

    }

    printf("\n result: %d", result(x,j,storage));

}



int result (int x, int j, int storage[])
{
    int z=0;
    while(storage[z] != '\0')
    {
        if(x == storage[z])
        {
            return z;
            break;
        }
        else
        z++;
    }
    return -1;
}
