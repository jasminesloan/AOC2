//
//  PlanEventViewController.h
//  week3
//
//  Created by Jasmine Jamieson on 12/5/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import <UIKit/UIKit.h>

//delegate
@protocol PlanEventDelegate <NSObject>

@required
- (void)pastEvent:(NSString *)eventsSavedString;
@end

@interface PlanEventViewController : UIViewController <UITextFieldDelegate>

{
    NSString *pickdateString;
    NSString *eventsSavedString;
    IBOutlet UITextField *pickEvent;
    IBOutlet UIDatePicker *pickADate;
    id<PlanEventDelegate> customDelegate;
    
}

@property (strong) id <PlanEventDelegate> customDelegate;
-(IBAction)closeViewOfEvents:(UIBarButtonItem*)sender;
-(IBAction)newEventDate:(UIDatePicker*)sender;
@end
