//
//  Factory.h
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 04/04/21.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Character.h"

NS_ASSUME_NONNULL_BEGIN

@interface Factory : NSObject

+(Boss *) createBoss;
+(Character *) createCharacter;
+(NSArray *) createTiles;

@end

NS_ASSUME_NONNULL_END
