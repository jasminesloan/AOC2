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
    float numberValue;
    float result;
    
    int selectedOperator;
    
    IBOutlet UITextField *displayCalculator;
    IBOutlet UIButton *clearButton;
    IBOutlet UIButton *clearNumber;
    IBOutlet UIButton *zero;
    IBOutlet UIButton *one;
    IBOutlet UIButton *two;
    IBOutlet UIButton *three;
    IBOutlet UIButton *four;
    IBOutlet UIButton *five;
    IBOutlet UIButton *six;
    IBOutlet UIButton *seven;
    IBOutlet UIButton *eight;
    IBOutlet UIButton *nine;
    IBOutlet UIButton *divide;
    IBOutlet UIButton *multiply;
    IBOutlet UIButton *minus;
    IBOutlet UIButton *plus;
    IBOutlet UIButton *equal;
    IBOutlet UISegmentedControl *segmentControl;
    IBOutlet UIButton *infoButton;
}

- (IBAction)clearAll:(UIButton *)sender;
- (IBAction)clearInput:(UIButton *)sender;
- (IBAction)secondKey:(UIButton *)sender;
- (IBAction)toggleSwitch:(UISwitch *)sender;
- (IBAction)numPressed:(UIButton *)sender;
- (IBAction)operatorPressed:(UIButton *)sender;
- (IBAction)bgColorSegBtn:(UISegmentedControl *)sender;

@end
