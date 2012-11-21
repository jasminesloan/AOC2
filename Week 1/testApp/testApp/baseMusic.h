//
//  baseMusic.h
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseMusic : NSObject
{
    int musicEnum;
}
typedef enum {
    HIPHOP,
    POP,
    RANDB
}musicEnum;

//data members for song time in minutes, albums, and array of track listings
@property NSString *albums;
@property int songTimeMinutes;

//initialize
-(id)init;

//calculation/manipulation method to find song time
-(void)calculateSongTime;


@end
