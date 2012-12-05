//
//  ViewController.m
//  week3
//
//  Created by Jasmine Jamieson on 12/5/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"
#import "PlanEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)pastEvent: (NSString*)eventsSavedString
{
    if (listOfEvents != nil)
    {
        eventString = [eventString stringByAppendingString: eventsSavedString];
    }
    else
    {
        listOfEvents = [NSString stringWithFormat:@"%@", eventsSavedString];
    }
listOfEvents.text = eventString;
}
- (void)viewDidLoad
{
    listOfEvents.text = @"No current events, add more now.";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Add Event"])
	{
        PlanEventViewController *planEventView = segue.destinationViewController;
        planEventView.customDelegate = self;
	}
}
@end
