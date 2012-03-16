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
@synthesize memorizedNumber;
@synthesize currentOperator;

-(id) init {
    self = [super init];
    if (self) {
        [self clear];
    }
    return self;
}

-(void) pressNumber:(NSInteger)theNumber {
    if (self.currentOperator != nil && self.memorizedNumber == nil) {
        self.memorizedNumber = self.number;
        self.number = [NSNumber numberWithInt:0];
    }

    NSString* oldNumber = [self description];
    NSString* newNumberStr = [oldNumber stringByAppendingFormat:@"%d", theNumber];
    
    NSNumber* newNumber = [NSNumber numberWithDouble:[newNumberStr doubleValue]];
    if ([[newNumber description] length] <= 8) {
        self.number = newNumber;
    }
}

-(void) pressOperator:(NSString*)theOp {
    self.currentOperator = theOp;
}

-(void) calculate {
    if (self.currentOperator == nil || self.memorizedNumber == nil) {
        return;
    }
    
    if ([self.currentOperator isEqualToString:@"+"]) {
        self.number = [NSNumber numberWithDouble:[self.memorizedNumber doubleValue] + [self.number doubleValue]];
    }
    
    self.memorizedNumber = nil;
    self.currentOperator = nil;
}

-(void) clear {
    self.number = [NSNumber numberWithInt:0];
    self.currentOperator = nil;
    self.memorizedNumber = nil;
}

-(NSString*) description {
    return [self.number description];
    
}

@end
