//
//  main.m
//  spotify-track
//
//  Created by Petter Rasmussen on 08/02/14.
//  Copyright (c) 2014 Petter Rasmussen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "spotify.h"

int main(int argc, const char * argv[])
{
    spotifyApplication *spotify = [SBApplication applicationWithBundleIdentifier:@"com.spotify.client"];
    if (!spotify.isRunning) {
        printf("Spotify not running\n");
        return 0;
    }

    spotifyTrack *track = spotify.currentTrack;
    if (!track.name || !track.artist) {
        printf("N/A\n");
        return 0;
    }
    printf("%s - %s\n", [track.artist UTF8String], [track.name UTF8String]);
    return 0;
}
