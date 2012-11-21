//
//  r&bMusic.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "randbMusic.h"

@implementation randbMusic

@synthesize songArtist, songTitle, totalSongTime, artistAlbum, songTimeMinutes, albumTimeMinutes, numberOfTracks, totalAlbumTime, albumExpectedTime;

//customize the init for R&B
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        //setting data members to defaults
        
        [self setSongArtist:@""];
        [self setSongTitle:@""];
        [self setArtistAlbum:@""];
        [self setSongTimeMinutes:0];
        [self setAlbumTimeMinutes:0];
        [self setAlbumExpectedTime:0];
        [self setNumberOfTracks:0];
        [self setTotalAlbumTime:0];
        
    }
    return self;
};

// overwriting calculation method
-(void)calculateSongTime
{
    
        
        [self setAlbumExpectedTime:(numberOfTracks * songTimeMinutes)];
        [self setAlbumTimeMinutes:albumExpectedTime];
}


@end
