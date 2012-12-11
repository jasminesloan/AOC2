//
//  ViewController.m
//  testApp
//
//  Created by Jasmine Jamieson on 12/5/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"
#import "PlanEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)passEvent: (NSString*)eventsSavedString
// adding event view
{
    if (eventString != nil)
    {
        eventString = [eventString stringByAppendingString:eventsSavedString];
    }
    else
    {
        eventString = [NSString stringWithFormat:@"%@", eventsSavedString];
    }
    listOfEvents.text = eventString;
}

-(void)onSwipe:(UIGestureRecognizer*)swipe
{
    PlanEventViewController* addPlanEventView = [[PlanEventViewController alloc] initWithNibName:@"PlanEventViewController" bundle:nil];
    addPlanEventView.customDelegate = self;                             //assign my delegate to viewController
    [self presentViewController:addPlanEventView animated:TRUE completion:NULL];
}

-(IBAction)onClick:(id)sender{
    //save the events to userDefaults
    [eventsStored setObject:eventString forKey:@"listOfEvents"];
    [eventsStored synchronize];
    
    //show alert to notify user of save
    UIAlertView* saveAlert = [[UIAlertView alloc] initWithTitle:@"Saved!"
                                                        message:@"Your events have been saved" delegate:nil
                                              cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [saveAlert show];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [labelSwipe addGestureRecognizer:rightSwipe];
    eventsStored = [NSUserDefaults standardUserDefaults];
    eventString = [eventsStored objectForKey:@"listOfEvents"];
        if (eventString != nil)
        {
            listOfEvents.text = eventString;
        }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
