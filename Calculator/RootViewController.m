//
//  RootViewController.m
//  Calculator
//
//  Created by Adam Johnson on 4/25/15.
//  Copyright (c) 2015 Adam. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()


@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;


@end


@implementation RootViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.caTax = 0.075;
    self.chiTax = 0.0925;
    self.nyTax = 0.045;

}


- (IBAction)onCalculateButtonTapped:(id)sender
{

    double price = [self.priceTextField.text doubleValue];

    if (self.segmentedControl.selectedSegmentIndex == 0)
    {

        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", price * self.caTax];

    }
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {

        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", price * self.chiTax];

    }
    else
    {

        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", price * self.nyTax];

    }

    self.totalLabel.text = [NSString stringWithFormat:@"%g", price + [self.resultLabel.text doubleValue]];








}

@end

























