//
//  MEXNG.h
//  NumbersGame
//
//  Created by Eduardo Almeida on 10/09/22.
//  Copyright 2010 MegaEduX.com. All rights reserved.
//
//	This class is open-source. You may use it on your own personal or 
//	commercial projects as long as you give credit to the author.
//

#import <Cocoa/Cocoa.h>


@interface MEXNG : NSObject {
	int money;
	int aTemporaryInt;
	int lastGenNumber;
}

- (int)money;
- (int)lastGenNumber;
- (void)setMoney:(int)value;
- (void)loadMoney;
- (int)generatedNumber;
- (void)doGameWithBet:(int)bet number:(int)number;
- (void)checkIfHasMoney;

@end
