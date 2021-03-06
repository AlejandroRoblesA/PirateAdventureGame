//
//  Character.h
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 04/04/21.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"

NS_ASSUME_NONNULL_BEGIN

@interface Character : NSObject

@property (strong, nonatomic) Armor * armor;
@property (strong, nonatomic) Weapon * weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

-(void) calculateAttributesForArmor: (nullable Armor *) armor withWeapon: (nullable Weapon *) weapon andHealthEffect: (int) healthEffect;

@end

NS_ASSUME_NONNULL_END
