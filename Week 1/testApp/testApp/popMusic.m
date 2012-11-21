//
//  popMusic.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "popMusic.h"

@implementation popMusic

@synthesize remixes, timePerRemix;

//customizing init to set unique data members
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setRemixes:3];
        [self setTimePerRemix:6];
    }
    return self;
};

//overriding the base music song time to factor in unique data members
-(void)calculateSongTime
{
    [self setSongTimeMinutes:(remixes * timePerRemix)];
    NSLog(@"This remix will play for %i minutes.", self.songTimeMinutes);
}

@end
