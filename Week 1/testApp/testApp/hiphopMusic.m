//
//  hiphopMusic.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "hiphopMusic.h"

@implementation hiphopMusic

@synthesize timeForSongs,loadingTime,listeningTime;


-(id)init
{ 
    self = [super init];
    if (self != nil)
    {
        [self setTimeForSongs:0];
        [self setLoadingTime:0];
        [self setListeningTime:0];
    }
    return self;
}

-(void)calculateSongTime
{
    [self setSongTimeMinutes:(timeForSongs + loadingTime + listeningTime)];
    
}

@end
