#include <stdio.h>

// Function Declarations
void Greeting();
void WarmingHearts();
void Farewell();

// Main Function
int main()
{
	Greeting();
	WarmingHearts();
	Farewell();
	
	return 0;
}

// Function Definitions
void Greeting()
{
	printf("Welcome to Warming Hearts!\n");
	printf("This program is designed to bring warmth and cheer to those you care about.\n");
}

void WarmingHearts() 
{
	// Create a loop to send love and warm wishes to your loved ones 
	for (int i = 0; i < 1000; i++)
	{
		printf("May your heart be filled with joy and happiness\n");
		printf("You are special and loved by all\n");
		printf("Your life is a blessing and you bring light to others\n");
		printf("You have the power to make a difference and I'm proud of you\n");
		printf("Have a wonderful day!\n\n");
	}
}

void Farewell()
{
	printf("Thanks for using Warming Hearts\n");
	printf("We hope that your loves ones are blessed with warmth and love\n");
	printf("Goodbye!\n");
}