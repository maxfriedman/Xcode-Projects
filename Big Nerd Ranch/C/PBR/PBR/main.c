//
//  main.c
//  PBR
//
//  Created by Max on 8/8/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr)
{
    // This function assumes meters is non-negative
    
    // Convert the number of meters into a floating point number of feet
    double rawFeet = meters * 3.281;
    
    // How many complete feet as an unsigned int?
    double fractionalFoot, feet;
    fractionalFoot = modf(rawFeet, &feet);
    double inches = fractionalFoot * 12.0;
    
    
    // Store the number of feet at the supplied address
    printf("Storing %u to the address %p\n", (int)feet, ftPtr);
    *ftPtr = feet;
    
    
    // Store the number of inches at the supplied address
    printf("Storing %.2f to the address %p\n", inches, inPtr);
    *inPtr = inches;
    
}

int main(int argc, const char * argv[]) {
    
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    
    return 0;
}
