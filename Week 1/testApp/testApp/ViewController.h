//
//  ViewController.h
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "musicfactory.h"

@interface ViewController : UIViewController
{
    UILabel * titleLable;
    UILabel * popMusicLabel;
    UILabel * popMusicTimeLabel;
    int timeToCompleteRemix;
    UILabel * randbLabel;
    UILabel * randbTimeLabel;
    int timeToCompleteAlbum;
    UILabel * hipHopTimeLabel;
    NSString *hipHopTimeString;
    UILabel * hipHopLabel;
    int timeToCompleteHipHop;
    
}

@end
