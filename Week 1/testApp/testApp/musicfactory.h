//
//  musicfactory.h
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseMusic.h"
#import "popMusic.h"
#import "hiphopMusic.h"
#import "randbMusic.h"

@interface musicfactory : NSObject

+(baseMusic *)createNewMusic: (int)musicType;

@end
