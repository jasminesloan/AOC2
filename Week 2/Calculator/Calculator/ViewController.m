//
//  ViewController.m
//  Calculator
//
//  Created by Jasmine Jamieson on 11/28/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //loads calculator text field
    displayCalculator.text = @"0";
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onButton:(id)sender; //on button
{
    UISwitch *switchOn = (UISwitch*)sender;
    if (switchOn  != nil)
    {
        int switchButton = switchOn.state;
        NSLog(@"You turned the calculator to %d", switchButton);
    }
    else {
        NSLog(@"!");
        
    }
}
-(IBAction)onClear:(id)sender; //clear all button
{
    numberButton = 0;
    displayCalculator.text = @"0";
}

-(IBAction)onClearAll:(id)sender; //clear all button
{
    numberButton = 0;
    displayCalculator.text = @"0";
    operatorButton = 0;
}

-(IBAction)onNumberPressed:(id)sender; //number button
{
    if (onOffButton.on != false)
    {
        numberButton = numberButton*10 + (float)[sender tag];
        displayCalculator.text = [NSString stringWithFormat:@"%2d", numberButton];
    }
}

-(IBAction)onOperatorClick:(id)sender; //operator button
{
    if (operatorButton == 0) result = currentNumber;
    else {
        switch (operatorButton) {
                
            case 1:
                result = result + currentNumber;
                break;
                
            case 2:
                result = result - currentNumber;
                break;
                
            case 3:
                result = result * currentNumber;
                break;
                
            case 4:
                result = result / currentNumber;
                break;
                
            case 5:
                operatorButton = 0;
                break;
                
        }
    }
    
    currentNumber = 0;
    displayCalculator.text = [NSString stringWithFormat:@"%2f",result];
    if ([sender tag] == 0) result = 0;
    operatorButton = [sender tag];
}

@end
