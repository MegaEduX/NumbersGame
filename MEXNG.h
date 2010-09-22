//
//  MEXNG.h
//  NumbersGame
//
//  Created by Eduardo Almeida on 10/09/22.
//  Copyright 2010 MegaEduX.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MEXNG : NSObject {
	int money;
	int aTemporaryInt;
	int genNumber;
}

- (int)money;
- (void)setMoney:(int)value;
- (void)loadMoney;
- (int)generatedNumber;
- (void)doGameWithBet:(int)bet number:(int)number;
- (void)checkIfHasMoney;

@end
