//
//  MEXNG.m
//  NumbersGame
//
//  Created by Eduardo Almeida on 10/09/22.
//  Copyright 2010 MegaEduX.com. All rights reserved.
//

#import "MEXNG.h"


@implementation MEXNG

- (int)money {
	return money;
}

- (void)setMoney:(int)value {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	money = value;
	[defaults setInteger:value forKey:@"Numbers Game Money"];
	[defaults synchronize];
}

- (void)loadMoney {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	if (![defaults integerForKey:@"Numbers Game Money"] == 0) {
		[self setMoney:[defaults integerForKey:@"Numbers Game Money"]];
		[defaults synchronize];
	} else {
		[self setMoney:500];
	}
	
	printf("You have $%d to bet.\n", money);
}

- (int)generatedNumber {
	srandomdev();
	genNumber = random()%11;
	return genNumber;
}

- (void)checkIfHasMoney {
	if (money == 0) {
		[self setMoney:500];
		printf("\nPoor you, you lost everything. I don't feel good seeing you sad, so I gave you $500 for free! Use them wisely.\n\n");
	} else {
		printf("\n");
	}
}		

- (void)doGameWithBet:(int)bet number:(int)number {
	if (bet <= money && bet > 0 && number <= 10 && number >= 0) {
		if ([self generatedNumber] == number) {
			aTemporaryInt = money + bet*10;
			[self setMoney:aTemporaryInt];
			printf("The number was %d, so you won $%d!\n", genNumber, bet*10);
		} else {
			aTemporaryInt = money - bet;
			[self setMoney:aTemporaryInt];
			printf("Aww, the number was %d, so you lost $%d...\n", genNumber, bet);
		}
	} else {
		if (bet > money) {
			printf("You can't trick me! You don't have that amount of money.\n");
		} else {
			if (bet == 0) {
				printf("You can't bet $0!");
			} else {
				printf("Please bet on a number between 0 and 10.\n");
			}
		}
	}
	[self checkIfHasMoney];
}

@end
