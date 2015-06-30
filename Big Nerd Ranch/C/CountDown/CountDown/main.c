//
//  main.c
//  CountDown
//
//  Created by Max on 8/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <readline/readline.h>

int main(int argc, const char * argv[]) {
    
    printf("Enter a number to begin countdown: ");
    const char *firstNum = readline (NULL);
    
    int num = atoi(firstNum);
    
    int i = 0;
    for (i = firstNum; i >= 0; i = i - 3)
    {
        printf("%d\n", i);
        if ((i % 5) == 0)
            printf("Found one!\n");
    }
    
    return 0;
}
