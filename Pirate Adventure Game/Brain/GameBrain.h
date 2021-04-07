//
//  GameBrain.h
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 06/04/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameBrain : NSObject

-(BOOL) tileExistsAtPoint: (CGPoint) point forTiles: (NSArray *) tiles;
-(void) declareWinnerForCharacter: (Character * ) character andBoss: (Boss * ) boss;

@end

NS_ASSUME_NONNULL_END
