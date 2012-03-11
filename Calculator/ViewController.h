//
//  ViewController.h
//  Calculator
//
//  Created by Francis Chong on 12年3月11日.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UILabel* labelDisplay;
@property (nonatomic, retain) Calculator* calculator;

- (IBAction)numberPressed:(id)sender;
- (IBAction)clearPressed:(id)sender;

@end
