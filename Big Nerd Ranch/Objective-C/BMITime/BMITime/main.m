//
//  main.m
//  BMITime
//
//  Created by Max on 8/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an instance of BNRPerson
        BNREmployee *max = [[BNREmployee alloc] init];
        
        // Give the instance variables values using setters
        max.weightInKilos = 80;
        max.heightInMeters = 1.8;
        max.employeeID = 90263;
        max.hireDate = [NSDate dateWithNaturalLanguageString:@"April 22, 1995"];
        
        // Log the instacne variables using getters
        float height = max.heightInMeters;
        int weight = max.weightInKilos;
        NSLog(@"Max is %.2f meters tall and weighs %d kilograms", height, weight);
        NSLog(@"Employee %u hired on %@", max.employeeID, max.hireDate);
        
        // Log some values using custom methods
        float bmi = [max bodyMassIndex];
        double years = max.yearsOfEmployment;
        NSLog(@"Max has a BMI of %.2f, and has worked with us for %.2f years", bmi, years);
        
    }
    return 0;
}
