//
//  ViewController.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/26/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //loads display of calculator
    displayCalculator.text = @"0";
    
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    // clearAll button action
- (IBAction)clearAll:(UIButton *)sender
{
    //clears input 
    numberValue = 0.0f;
    selectedOperator = 0;
    displayCalculator.text = @"0";
}
    //clear button
- (IBAction)clearInput:(UIButton *)sender
{
    //clears input of numValue only
    numberValue = 0.0f;
    displayCalculator.text = [NSString stringWithFormat:@"%.1f",numberValue];
}
//toggle keys
- (IBAction)secondKey:(UIButton *)sender
{
    if (sender != nil)
    {
        sender.selected = !sender.selected;
        if (sender.selected == YES)
        {
            NSLog(@"Depressed");
            
            //hide
            divide.hidden = YES;
            multiply.hidden = YES;

        }
        else if (sender.selected == NO)
        {
            NSLog(@"Normal");
            //show
            divide.hidden = NO;
            multiply.hidden = NO;

        }
    }
}
//toggle (On/Off) switch action
- (IBAction)toggleSwitch:(UISwitch *)sender
{
    if (sender != nil)
    {
        if (sender.on == TRUE)
        {
            NSLog(@"The calculator is On");
            
            //clears input and operators
            numberValue = 0.0f;
            selectedOperator = 0;
            displayCalculator.text = @"0";
            
            //enables calculator buttons
            clearButton.enabled = YES;
            clearNumber.enabled = YES;
            zero.enabled = YES;
            one.enabled = YES;
            two.enabled = YES;
            three.enabled = YES;
            four.enabled = YES;
            five.enabled = YES;
            six.enabled = YES;
            seven.enabled = YES;
            eight.enabled = YES;
            nine.enabled = YES;
            divide.enabled = YES;
            multiply.enabled = YES;
            minus.enabled = YES;
            plus.enabled = YES;
            equal.enabled = YES;
            segmentControl.enabled = YES;
            infoButton.enabled = YES;
        }
        else if (sender.on == FALSE)
        {
            NSLog(@"The calculator is Off");
            
            //clears input and operators
            numberValue = 0.0f;
            selectedOperator = 0;
            displayCalculator.text = @"0";
            
            //disables calculator buttons
            clearButton.enabled = NO;
            clearNumber.enabled = NO;
            zero.enabled = NO;
            one.enabled = NO;
            two.enabled = NO;
            three.enabled = NO;
            four.enabled = NO;
            five.enabled = NO;
            six.enabled = NO;
            seven.enabled = NO;
            eight.enabled = NO;
            nine.enabled = NO;
            divide.enabled = NO;
            multiply.enabled = NO;
            minus.enabled = NO;
            plus.enabled = NO;
            equal.enabled = NO;
            segmentControl.enabled = NO;
            infoButton.enabled = NO;
        }
    }
}

//declares value of button pressed
- (IBAction)numPressed:(UIButton *)sender
{
    if (sender != nil)
    {
        numberValue = numberValue * 10 + (float) [sender tag];
        displayCalculator.text = [[NSString alloc]initWithFormat:@"%.2f",numberValue];
    }
}

//handles what to do when an operator is pressed
- (IBAction)operatorPressed:(UIButton *)sender
{
    if (sender != nil)
    {
        if (selectedOperator == 0)
        {
            result = numberValue;  //equals operator
        }
        else
        {
            switch (selectedOperator) {
                case 1:
                    result = result + numberValue; //plus operator
                    break;
                    
                case 2:
                    result = result - numberValue; //minus operator
                    break;
                    
                case 3:
                    result = result * numberValue; //multiply operator
                    break;
                    
                case 4:
                    result = result / numberValue; //divide operator
                    break;
            }
        }
        numberValue = 0;
        displayCalculator.text = [NSString stringWithFormat:@"%.2f",result];
        selectedOperator = sender.tag;
    }
}

//decimal button action
- (IBAction)decimalPressed:(UIButton *)sender
{
    /*NSRange range = [calcDisplay.text rangeOfString:@"."];
     if (range.location == NSNotFound)
     {
     calcDisplay.text = [calcDisplay.text stringByAppendingString:@"."];
     }*/
}

//segemented button action
- (IBAction)bgColorSegBtn:(UISegmentedControl *)sender
{
    if (sender != nil) {
        int selectedIndex = sender.selectedSegmentIndex;
        NSLog(@"You have selected index %d", selectedIndex);
        
        // white segemented button selected
        if (selectedIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        // blue segemented button selected
        else if (selectedIndex == 1)
        {
            self.view.backgroundColor = [UIColor colorWithRed:0.012 green:0.271 blue:0.412 alpha:1]; /*#034569*/
        }
        // green segemented button selected
        else if (selectedIndex == 2)
        {
            self.view.backgroundColor = [UIColor colorWithRed:0.624 green:0.933 blue:0 alpha:1]; /*#9fee00*/
        }
    }
}

@end
