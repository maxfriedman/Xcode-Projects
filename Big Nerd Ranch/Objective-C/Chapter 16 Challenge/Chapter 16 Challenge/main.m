//
//  main.m
//  Chapter 16 Challenge
//
//  Created by Max on 8/16/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *random = @"Hi, this is my dog Steve.";
        NSString *dog = @"DOG";
        NSRange animalLocation = [random rangeOfString:dog options:NSCaseInsensitiveSearch];
        if (animalLocation.location == NSNotFound)
        {
            NSLog(@"Match not found");
        }
        else
            NSLog(@"Match found!");
        
        NSString *blah = [random substringWithRange:animalLocation];
        NSLog(@"%@", blah);
        
    }
    return 0;
}
