//
//  baseMusic.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "baseMusic.h"

@implementation baseMusic

//synthesize creates get and set methods for each property
@synthesize albums, songTimeMinutes;

//initialize the base music, creating the instance and setting song time to zero
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setSongTimeMinutes:0];
        [self setAlbums:nil];
    }
    return self;
}

//calculation/manipulation method to find song time
-(void)calculateSongTime;
{
    //no calculation right now, just a statement written to the log with current value
    NSLog(@"This song will play for %i minutes", songTimeMinutes);
    
}

@end
