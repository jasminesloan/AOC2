//
//  PlanEventViewController.m
//  testApp
//
//  Created by Jasmine Jamieson on 12/5/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "PlanEventViewController.h"

@interface PlanEventViewController ()

@end

@implementation PlanEventViewController

// Synthesize delegate
@synthesize customDelegate;

//
-(NSString*)appendDate
{            //sends the date chosen to the event description
    NSDateFormatter* dateFormatted = [[NSDateFormatter alloc] init];
    [dateFormatted setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
    eventsSavedString = [eventsSavedString stringByAppendingFormat:@"\n%@ \n\n", [dateFormatted stringFromDate:eventDate]];
    return eventsSavedString;
}
//dismisses keyboard when no longer needed or wanted
-(IBAction)keyboardDismiss
{
    [eventDescription resignFirstResponder];
}


-(IBAction)onClick:(id)sender
{
    if ([sender tag] == 0) {
        //dismiss keyboard
        [self keyboardDismiss];
    }
    else if ([sender tag] == 1)
    {
        [self dismissModalViewControllerAnimated: YES];
    }
}

-(IBAction)onChange:(id)sender
{
    eventDate = pickADate.date;
}

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    pickADate.minimumDate = [NSDate date];
    eventDate = pickADate.date;                                  
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [labelSwipe addGestureRecognizer:leftSwipe];
}

-(void)onSwipe:(UISwipeGestureRecognizer*)swipe
{
    NSCharacterSet* spaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    //create space
    NSString* trimmedEvent = [eventDescription.text stringByTrimmingCharactersInSet:spaces];
    //takes white space away
    
    if (trimmedEvent.length > 0)
    {
        eventsSavedString = eventDescription.text;
        [customDelegate passEvent:[self appendDate]];
        [self dismissModalViewControllerAnimated: YES];
        
    }
    else
    {
        UIAlertView *alertError = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Please add your event description" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        
        [alertError show];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
