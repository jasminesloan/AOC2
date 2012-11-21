//
//  popMusic.h
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "baseMusic.h"

@interface popMusic : baseMusic

// data members for remixes and time to play per remix
@property int remixes;
@property int timePerRemix;

// calculation to override
-(void)calculateSongTime;

@end
