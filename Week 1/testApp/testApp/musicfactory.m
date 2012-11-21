//
//  musicfactory.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "musicfactory.h"

@implementation musicfactory

+(baseMusic *)createNewMusic: (int)musicType;
{
        //pop music requested
    if (musicType == POP){
        return [[popMusic alloc] init];
        
        //r & b music is requested
    } else if (musicType == RANDB){
        return [[randbMusic alloc] init];
    
        //hip hop music is requested
    }else if (musicType == HIPHOP){
        return [[hiphopMusic alloc] init];
    }
    
    else return nil;
}

@end
