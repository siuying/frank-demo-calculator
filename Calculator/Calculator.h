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

-(void) pressNumber:(NSInteger)theNumber;

@end
