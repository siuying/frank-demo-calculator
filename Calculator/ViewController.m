//
//  ViewController.m
//  Calculator
//
//  Created by Francis Chong on 12年3月11日.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize labelDisplay;
@synthesize calculator;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	self.calculator = [[Calculator alloc] init];
    self.labelDisplay.text = [self.calculator description];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.calculator = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)numberPressed:(id)sender {
    UIButton* button = sender;
    [self.calculator pressNumber:button.tag];
    self.labelDisplay.text = [self.calculator description];
}

- (IBAction)clearPressed:(id)sender {
    [self.calculator clear];
    self.labelDisplay.text = [self.calculator description];
}

- (IBAction)operatorPressed:(id)sender {
    UIButton* button = sender;
    NSString* operator = [button titleLabel].text;
    [self.calculator pressOperator:operator];
}

@end
