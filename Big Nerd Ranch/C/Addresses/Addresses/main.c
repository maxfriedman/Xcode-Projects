//
//  main.c
//  Addresses
//
//  Created by Max on 8/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    *addressOfI = 89;
    printf("Now i is %d\n", *addressOfI);
    printf("An int is %zu bytes\n", sizeof(i));
    printf("An pointer is %zu bytes\n", sizeof(addressOfI));
    
    // Program to show memory taken by float

    printf("Size of a float is %zu bytes\n", sizeof(2.0));
    
    
    return 0;
}
