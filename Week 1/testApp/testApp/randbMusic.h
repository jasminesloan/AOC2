//
//  r&bMusic.h
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "baseMusic.h"

@interface randbMusic : baseMusic
{
    int randbSong;
}

typedef enum {
    RIHANNA,
    MONICA,
    KEYSHIACOLE
} randbSong;

@property NSString *songArtist;
@property NSString *songTitle;
@property int totalSongTime;
@property NSString *artistAlbum;
@property int albumTimeMinutes;
@property int albumExpectedTime;
@property int numberOfTracks;
@property int totalAlbumTime;
@property int songTimeMinutes;

@end
