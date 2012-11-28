//
//  ViewController.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/26/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//


#import "ViewController.h"
#import "InfoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    onOffButton.on = true;
    imageIndex = 0;
    darkwoodImage = [UIImage imageNamed:@"darkwood.jpg"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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

-(IBAction)onNumberPressed:(id)sender; //number button
{
    if (onOffButton.on != false)
    {
        numberButton = numberButton*10 + (float)[sender tag];
        displayCalculator.text = [NSString stringWithFormat:@"%2d", numberButton];
    }
}

-(IBAction)onClick:(id)sender; //operator button
{
    if (operatorButton == 0)
    {
        result = numberButton;
    } else {
        switch (operatorButton) {
            case 1:
                result += numberButton;
                break;
            case 2:
                operatorButton = 0;
                break;
        }
        
    }
    numberButton = 0;
    displayCalculator.text = [NSString stringWithFormat:@"%2f", result];
    if ([sender tag] == 0)
        result = 0;
    operatorButton = [sender tag];
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

-(IBAction)onInfoClick:(id)sender
{
    infoViewController *viewController = [[infoViewController alloc] initWithNibName:@"infoViewController" bundle:nil];
    if (viewController != nil)
    {
        [self presentModalViewController:viewController animated:YES];
    }
    
}

-(IBAction)onChangeBackgroundClick:(id)sender; //change background color
{
    
   if (imageIndex == 0)
   {
    imageView1.image = darkwoodImage;
   }
    else if (imageIndex == 1)
    {
        imageView2.image = darkwoodImage;
    }
    else if (imageIndex == 2)
    {
        imageView3.image = darkwoodImage;
    }
    else
    {
        //do nothing
    }
    
    imageIndex++;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end