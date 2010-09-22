//
//  MEXController.m
//  NumbersGame
//
//  Created by Eduardo Almeida on 10/09/22.
//  Copyright 2010 MegaEduX.com. All rights reserved.
//

#import "MEXController.h"
#import "MEXNG.h"

@class MEXNG;

@implementation MEXController

- (void)welcomeToNG {
	printf("Welcome to the Numbers Game!\n");
}

- (void)theGame {
	MEXNG *numbersGame = [MEXNG new];
	[numbersGame loadMoney];
	printf("What number do you want to bet in? (0-10) ");
	scanf("%d", &theBet);
	printf("What's the amount of your bet? ");
	scanf("%d", &betAmount);
	[numbersGame doGameWithBet:betAmount number:theBet];
	[self theGame];
}

@end
