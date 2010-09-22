//
//  MEXController.h
//  NumbersGame
//
//  Created by Eduardo Almeida on 10/09/22.
//  Copyright 2010 MegaEduX.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MEXController : NSObject {
	int theBet;
	int betAmount;
}

- (void)welcomeToNG;
- (void)theGame;

@end
