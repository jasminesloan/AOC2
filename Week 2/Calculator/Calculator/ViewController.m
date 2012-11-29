//
//  ViewController.m
//  Calculator
//
//  Created by Jasmine Jamieson on 11/28/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"
#import "InfoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //loads calculator text field
    displayCalculator.text = @"0";
    
  //  imageIndex = 0;
  //  blackwoodImage = [UIImage imageNamed:@"blackwood.jpg"];
  //  darkwoodImage = [UIImage imageNamed:@"darkwood.jpg"];
  //  woodgrainImage = [UIImage imageNamed:@"woodgrain.jpg"];
    
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

-(IBAction)onOperatorClick:(id)sender
{
    if (sender != nil)
    {
        if (operatorButton == 0)
        {
            result = currentNumber;  //equals
        }
        else
        {
            switch (operatorButton) {
                case 1:
                    result = result + currentNumber; //plus
                    break;
                    
                case 2:
                    result = result - currentNumber; //minus
                    break;
                    
                case 3:
                    result = result * currentNumber; //multiply
                    break;
                    
                case 4:
                    result = result / currentNumber; //divide
                    break;
        }
        
    }
    currentNumber = 0;
    displayCalculator.text = [NSString stringWithFormat:@"%2f", result];
    if ([sender tag] == 0)
        result = 0;
    operatorButton = [sender tag];
    }
}

-(IBAction)onChangeBackgroundClick:(id)sender; //change background color
{
    UISegmentedControl *segControl = (UISegmentedControl*)sender;
    if (segControl != nil)
    {
        int selectedIndex = segControl.selectedSegmentIndex;
        NSLog(@"You have selected index %d", selectedIndex);
        switch (selectedIndex)
        {
            case 0:
                self.view.backgroundColor = [UIColor whiteColor];
                break;
                
            case 1:
                self.view.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:0.8 alpha:1]; /*#0099cc*/
                break;
                
            case 2:
                self.view.backgroundColor = [UIColor colorWithRed:0 green:0.38 blue:0.11 alpha:1]; /*#00611c*/
                break;
            
            case 3:
                self.view.backgroundColor = [UIColor colorWithRed:0.69 green:0.09 blue:0.122 alpha:1]; /*#b0171f*/
                break;
                
            default:
                self.view.backgroundColor = [UIColor whiteColor];
                break;
        }
    }
}
-(IBAction)onInfoClick:(id)sender
{
    infoViewController *viewController = [[infoViewController alloc] initWithNibName:@"infoViewController" bundle:nil];
    if (viewController != nil)
    {
        [self presentModalViewController:viewController animated:YES];
    }
    
}

@end
