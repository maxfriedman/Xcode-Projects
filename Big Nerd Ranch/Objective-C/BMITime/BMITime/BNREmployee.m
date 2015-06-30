//
//  BNREmployee.m
//  BMITime
//
//  Created by Max on 8/19/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment;
{
    // Do I have a non-nil hiring date?
    if (self.hireDate)
    {
        // NSTimeInterval is the same as double
        NSDate *now = [[NSDate alloc] init];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; // Seconds per year
    }
    else {
        return 0;
    }
    
}

@end
