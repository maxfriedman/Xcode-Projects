//
//  main.m
//  ComputerName
//
//  Created by Max on 8/12/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSHost *compInfo = [NSHost currentHost];
        NSString *compName = [compInfo localizedName];
        NSLog(@"The name of my computer is %@!", compName);
        
    }
    return 0;
}
