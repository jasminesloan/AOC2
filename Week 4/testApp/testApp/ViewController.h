//
//  ViewController.h
//  testApp
//
//  Created by Jasmine Jamieson on 12/5/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlanEventViewController.h"

@interface ViewController : UIViewController <PlanEventDelegate>
{
    NSString *eventString;
    IBOutlet UITextView *listOfEvents;
    UISwipeGestureRecognizer *rightSwipe;
    NSUserDefaults *eventsStored;
    IBOutlet UILabel *labelSwipe;
    
}

-(IBAction)onClick:(id)sender;
@end
