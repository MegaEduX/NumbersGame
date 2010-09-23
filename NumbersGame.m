#import <Foundation/Foundation.h>
#import "MEXController.h"

@class MEXController;

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    MEXController *controller = [MEXController new];
	[controller welcomeToNG];
	[controller theGame];
    [pool drain];
    return 0;
}
