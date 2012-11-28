//
//  ViewController.h
//  testApp
//
//  Created by Jasmine Jamieson on 11/26/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{

    IBOutlet UILabel *displayCalculator;
    IBOutlet UISwitch *onOffButton;
    IBOutlet UIImageView *imageView1;
    IBOutlet UIImageView *imageView2;
    IBOutlet UIImageView *imageView3;
    UIImage *darkwoodImage;
    int imageIndex;
    int operatorButton;
    int numberButton;
    float currentNumber;
    float result;
}

-(IBAction)onButton:(id)sender; //on button
-(IBAction)onNumberPressed:(id)sender; //number button
-(IBAction)onClear:(id)sender; //clear button
-(IBAction)onClearAll:(id)sender; //clear all button
-(IBAction)onClick:(id)sender; //operator button
-(IBAction)onChangeBackgroundClick:(id)sender; //change background color
-(IBAction)onInfoClick:(id)sender; //info button




@end
