//
//  Calculator.m
//  Calculator
//
//  Created by Francis Chong on 12年3月11日.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize number;

-(id) init {
    self = [super init];
    if (self) {
        self.number = [NSNumber numberWithInt:0];
    }
    return self;
}

-(void) pressNumber:(NSInteger)theNumber {
    NSString* oldNumber = [self description];
    NSString* newNumberStr = [oldNumber stringByAppendingFormat:@"%d", theNumber];
    
    NSNumber* newNumber = [NSNumber numberWithDouble:[newNumberStr doubleValue]];
    if ([[newNumber description] length] <= 8) {
        self.number = newNumber;
    }
}

-(NSString*) description {
    return [self.number description];
}

@end