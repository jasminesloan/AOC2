//
//  PlanEventViewController.h
//  testApp
//
//  Created by Jasmine Jamieson on 12/5/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import <UIKit/UIKit.h>

//delegate
@protocol PlanEventDelegate <NSObject>

@required
- (void)passEvent:(NSString *)eventsSavedString;
@end

@interface PlanEventViewController : UIViewController <UITextFieldDelegate>

{
    NSString *eventsSavedString;
    IBOutlet UITextField *eventDescription;
    IBOutlet UIDatePicker *pickADate;
    NSDate* eventDate;
    UISwipeGestureRecognizer *leftSwipe;
    IBOutlet UILabel *labelSwipe;
    id<PlanEventDelegate> customDelegate;
    
}

@property (strong) id <PlanEventDelegate> customDelegate;
-(IBAction)keyboardDismiss;
-(NSString*)appendDate;
-(IBAction)onChange:(id)sender;
-(IBAction)onClick:(id)sender;

@end
