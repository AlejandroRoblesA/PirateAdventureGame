//
//  GameBrain.m
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 06/04/21.
//

#import "GameBrain.h"

@implementation GameBrain

-(BOOL) tileExistsAtPoint: (CGPoint) point forTiles: (NSArray *) tiles{
    if (point.y >= 0 && point.x >= 0 && point.x < [tiles count] && point.y < [[tiles objectAtIndex:point.x] count] ){
        return YES;
    }
    else{
        return NO;
    }
}

@end
