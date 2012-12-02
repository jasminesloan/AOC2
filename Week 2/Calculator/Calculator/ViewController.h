//
//  ViewController.h
//  Calculator
//
//  Created by Jasmine Jamieson on 11/28/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    IBOutlet UITextField *displayCalculator;
    IBOutlet UISwitch *onOffButton;
    IBOutlet UISegmentedControl *segmentedControl;
    int operatorButton;
    int numberButton;
    float currentNumber;
    float result;
}

-(IBAction)onButton:(id)sender; //on button
-(IBAction)onNumberPressed:(id)sender; //number button
-(IBAction)onClear:(id)sender; //clear button
-(IBAction)onClearAll:(id)sender; //clear all button
-(IBAction)onOperatorClick:(id)sender; //operator button
-(IBAction)onChangeBackgroundClick:(id)sender; //change background color
-(IBAction)onInfoClick:(id)sender; //info button

@end
