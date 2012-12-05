//
//  PlanEventViewController.m
//  week3
//
//  Created by Jasmine Jamieson on 12/5/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "PlanEventViewController.h"

@interface PlanEventViewController ()

@end

@implementation PlanEventViewController
@synthesize customDelegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    pickADate.minimumDate = [NSDate date];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Saves new event and closes view
-(IBAction)closeViewOfEvents:(UIBarButtonItem*)sender
{
    if (sender != nil)
    {
        if (sender.tag == 0)
        {
            if (pickEvent.text.length == 0)
            {
                UIAlertView *alertEvent = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please add your event." delegate:self cancelButtonTitle:@"Cancel?" otherButtonTitles:nil];
                
                [alertEvent show];
            }
            else if (pickdateString == NULL)
            {
                UIAlertView *dateAlert = [[UIAlertView alloc]initWithTitle:@"Date Error" message:@"Please select and date and time." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
                [dateAlert show];
            }
            else
            {
                if (customDelegate != nil)
                {
                    eventsSavedString = [NSString stringWithFormat:@"%@ \n %@ \n \n",pickEvent.text, pickdateString];
                    NSLog(@"%@",eventsSavedString);
                    
                    [customDelegate pastEvent:eventsSavedString];

                    [self dismissViewControllerAnimated:YES completion:nil];
                }
            }
        }

        if (sender.tag == 1)
        {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)newEventDate:(UIDatePicker*)sender
{
    if (sender != nil)
    {
        NSDate *selectedDate = sender.date;
        if (selectedDate != nil)
        {
            NSDateFormatter *formattedDate = [[NSDateFormatter alloc]init];
            if (formattedDate != nil)
            {
                [formattedDate setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
                pickdateString = [formattedDate stringFromDate:selectedDate];
            }
        }
    }
}

@end
