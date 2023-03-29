#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int bin_verify(char[]);
int main(int argc, char* argv[])
{

	char bin1[33], bin2[33], bin3[33], bin4[33], bin5[33];
	int check;
	int bin_verify(char []);

	printf("Enter Binary #1: ");
	scanf("%s", bin1);

	printf("Enter Binary #2: ");
	scanf("%s", bin2);

	printf("Enter Binary #3: ");
	scanf("%s", bin3);

	printf("Enter Binary #4: ");
	scanf("%s", bin4);

	printf("Enter Binary #5: ");
	scanf("%s", bin5);

	check = bin_verify(bin1);
    	if (check)
    	{
        	printf("Invalid binary number %s.\n", bin1);
        	exit(0);
    	}

    	check = bin_verify(bin2);
    	if (check)
    	{
        	printf("Invalid binary number %s.\n", bin2);
        	exit(0);
    	}

	check = bin_verify(bin3);
 	if (check)
    	{
	        printf("Invalid binary number %s.\n", bin3);
        	exit(0);
    	}

    	check = bin_verify(bin4);
    	if (check)
    	{
        	printf("Invalid binary number %s.\n", bin4);
        	exit(0);
    	}

	check = bin_verify(bin5);
	 if (check)
    	{
        	printf("Invalid binary number %s.\n", bin1);
        	exit(0);
    	}

	return 0;
}

int bin_verify(char str[])
{
    int i;
 
    for (i = 0; i < strlen(str); i++)
    {
        if ((str[i] - '0' != 1 ) && (str[i] - '0' != 0))
        {
            return 1;
        }
    }
 
    return 0;
}
