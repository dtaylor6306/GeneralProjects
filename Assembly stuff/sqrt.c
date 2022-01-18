#include <stdio.h>

int main()
{
	double guess,last,number;
	last = 1;
	number = 36;
	guess = number / 2;
	
	
	while((guess*guess)- number > 0.0001)
	{
		last = guess;
		guess = (number / guess);
		guess = (last + guess) / 2;
		
		printf("%f\n",guess);
		
		
	}


}
