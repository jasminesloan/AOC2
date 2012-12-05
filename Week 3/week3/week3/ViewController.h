//
//  ViewController.h
//  week3
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
}
@end
