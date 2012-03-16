//
//  Calculator.h
//  Calculator
//
//  Created by Francis Chong on 12年3月11日.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic, retain) NSNumber* number;
@property (nonatomic, retain) NSString* currentOperator;

-(void) pressNumber:(NSInteger)theNumber;
-(void) pressOperator:(NSString*)theOp;
-(void) clear;

@end
