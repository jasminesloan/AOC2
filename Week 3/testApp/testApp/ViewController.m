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



-(IBAction)onClick:(id)sender
{
    PlanEventViewController* addPlanEventView = [[PlanEventViewController alloc] initWithNibName:@"PlanEventViewController" bundle:nil];
    addPlanEventView.customDelegate = self;
    //assign delegate to viewController
    //with the new verson, it has a (^void)completion, I believe, what goes in that portion of the function? Or is it not that big of a deal at the moment?
    [self presentModalViewController:addPlanEventView animated:TRUE];
}

- (void)viewDidLoad
{
    //Is there a way to have an image background and have the text view also? Not a big deal just wondering
    listOfEvents.text = @"No current events, add more now.";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
