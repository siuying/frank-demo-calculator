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
@synthesize error;

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
    
    NSLog(@"op = %@", theOp);
    
}

-(void) calculate {
    if (self.currentOperator == nil || self.memorizedNumber == nil) {
        return;
    }

    if ([self.currentOperator isEqualToString:@"+"]) {
        self.number = [NSNumber numberWithDouble:[self.memorizedNumber doubleValue] + [self.number doubleValue]];
    } else if ([self.currentOperator isEqualToString:@"-"]) {
        self.number = [NSNumber numberWithDouble:[self.memorizedNumber doubleValue] - [self.number doubleValue]];
    } else if ([self.currentOperator isEqualToString:@"x"]) {
        self.number = [NSNumber numberWithDouble:[self.memorizedNumber doubleValue] * [self.number doubleValue]];
    } else if ([self.currentOperator isEqualToString:@"÷"]) {
        if ([self.number doubleValue] == 0) {
            self.error = YES;
        } else {
            self.number = [NSNumber numberWithDouble:[self.memorizedNumber doubleValue] / [self.number doubleValue]];        
        }

    }
    
    self.memorizedNumber = nil;
    self.currentOperator = nil;
}

-(void) clear {
    self.error = NO;
    self.number = [NSNumber numberWithInt:0];
    self.currentOperator = nil;
    self.memorizedNumber = nil;
}

-(NSString*) description {
    if (error) {
        return @"ERR";
    } else {
        return [self.number description];
    }
}

-(void) dealloc {
    self.number = nil;
    self.currentOperator = nil;
    self.memorizedNumber = nil;
    [super dealloc];
}

@end
