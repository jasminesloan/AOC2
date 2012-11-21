//
//  ViewController.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/19/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor colorWithRed:0.545 green:0.102 blue:0.102 alpha:1]; /*#8b1a1a*/
    
    
    
    titleLable = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 320, 40)];
    if (titleLable != nil) {
        titleLable.backgroundColor = [UIColor colorWithRed:0.259 green:0.259 blue:0.259 alpha:1]; /*#424242*/
        titleLable.text =@"Music Factory";
        titleLable.textAlignment = NSTextAlignmentCenter;
        titleLable.textColor =[UIColor whiteColor];
        
    }
    [self.view addSubview:titleLable];
    
    //POP MUSIC SECTION
        
    //pop song and time per song/remix
    popMusic *playlistChoice = (popMusic*)[musicfactory createNewMusic:POP];
    
    if (playlistChoice !=nil){
    
        [playlistChoice setAlbums:@"Pop Remix Albums"];
        [playlistChoice setRemixes:15];
        [playlistChoice calculateSongTime];
        
        timeToCompleteRemix = [playlistChoice songTimeMinutes];
        
        //calculate and log the song time
        [playlistChoice calculateSongTime];
        
        popMusicLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 320.0f, 40.0f)];
        if (popMusicLabel != nil) {
            popMusicLabel.backgroundColor= [UIColor colorWithRed:0 green:0.247 blue:0.529 alpha:1]; /*#003f87*/
            popMusicLabel.text = [NSString stringWithFormat:@"The %@; each remix should take %d minutes to complete.", playlistChoice.albums, playlistChoice.timePerRemix];
            popMusicLabel.textColor =[UIColor whiteColor];
            popMusicLabel.numberOfLines= 3;
            
            // call into view
            [self.view addSubview:popMusicLabel];
        }
        
        popMusicTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 100.0f, 320, 40)];
        if (popMusicTimeLabel != nil) {
            popMusicTimeLabel.backgroundColor =[UIColor colorWithRed:0 green:0.247 blue:0.529 alpha:1]; /*#003f87*/
            popMusicTimeLabel.text = [NSString stringWithFormat:@"This should take you a total of %d minutes to complete %@.",timeToCompleteRemix, playlistChoice.albums];
            popMusicTimeLabel.textColor =[UIColor whiteColor];
            popMusicTimeLabel.numberOfLines = 2;
        }
        // call into view
        [self.view addSubview:popMusicTimeLabel];
    }
    
    //R&B MUSIC SECTION
    //create R&B artist, song, and length
    randbMusic *randbArtist = (randbMusic*)[musicfactory createNewMusic:RANDB];
    
        if (randbArtist !=nil)
        {
            [randbArtist setAlbums:@"R&B Albums"];
            [randbArtist setSongArtist:@"Rihanna"];
            [randbArtist setSongTitle:@"Right Now"];
            [randbArtist setSongTimeMinutes:4];
            [randbArtist setArtistAlbum:@"Unapologetic"];
            [randbArtist setAlbumExpectedTime:120];
            [randbArtist setNumberOfTracks:14];
            
            
            timeToCompleteAlbum = [randbArtist albumExpectedTime];
            
            //calculate and log music time
            [randbArtist calculateSongTime];
            int mySongTime = randbArtist.totalSongTime;
            NSLog(@"%i", mySongTime);
            
            randbLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 150.0f, 320, 40)];
            if (randbLabel != nil) {
                randbLabel.backgroundColor =[UIColor colorWithRed:0 green:0.247 blue:0.529 alpha:1]; /*#003f87*/
                randbLabel.text = [NSString stringWithFormat:@"You are hearing %@, from the %@ album, by %@.", randbArtist.songTitle, randbArtist.artistAlbum, randbArtist.songArtist];
                randbLabel.textColor =[UIColor whiteColor];
                randbLabel.numberOfLines = 3;
            }
            [self.view addSubview:randbLabel];
            
            randbTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 200.0f, 320, 40)];
            if (randbTimeLabel != nil) {
                randbTimeLabel.backgroundColor= [UIColor colorWithRed:0 green:0.247 blue:0.529 alpha:1]; /*#003f87*/
                randbTimeLabel.text = [NSString stringWithFormat:@"It should take you about %d minutes to complete %@.", timeToCompleteAlbum, randbArtist.artistAlbum];
                randbTimeLabel.textColor =[UIColor whiteColor];
                randbTimeLabel.numberOfLines = 2;
            }
            [self.view addSubview:randbTimeLabel];
            
        }
    
    //HIP HOP SECTION
    //creat hip hop album information
    hiphopMusic *hipHopAlbum = (hiphopMusic*)[musicfactory createNewMusic: HIPHOP];

    if (hipHopAlbum != nil) {
        [hipHopAlbum setAlbums:@"Hip Hop Albums"];
        [hipHopAlbum setTimeForSongs:130];
        [hipHopAlbum setLoadingTime:10];
        [hipHopAlbum setListeningTime:120];
        [hipHopAlbum calculateSongTime];
        
        timeToCompleteHipHop = [hipHopAlbum songTimeMinutes];
        
        hipHopLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 250.0f, 320, 40)];
        if (hipHopLabel) {
            hipHopLabel.backgroundColor = [UIColor colorWithRed:0 green:0.247 blue:0.529 alpha:1]; /*#003f87*/
            hipHopLabel.text = [NSString stringWithFormat:@"Your %@ will take a total of %d minutes to complete.", hipHopAlbum.albums, timeToCompleteHipHop];
            hipHopLabel.textColor =[UIColor whiteColor];
            hipHopLabel.numberOfLines = 2;
        }
        
        [self.view addSubview:hipHopLabel];
    }
    hipHopTimeString = [NSString stringWithFormat:@"It wilk take %d minutes for songs, %d for loading and %d minutes of listening.", hipHopAlbum.timeForSongs, hipHopAlbum.loadingTime, hipHopAlbum.listeningTime];
    
    hipHopTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 300.0f, 320, 40)];
    if (hipHopTimeLabel!= nil) {
        hipHopTimeLabel.backgroundColor = [UIColor colorWithRed:0 green:0.247 blue:0.529 alpha:1]; /*#003f87*/
        hipHopTimeLabel.text = hipHopTimeString;
        hipHopTimeLabel.textColor =[UIColor whiteColor];
        hipHopTimeLabel.numberOfLines =2;
    }
    
        [self.view addSubview:hipHopTimeLabel];



    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
