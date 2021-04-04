//
//  Factory.m
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 04/04/21.
//

#import "Factory.h"

@implementation Factory

+(Boss *) createBoos{
    Boss * boss = [[Boss alloc] init];
    boss.healt = 65;
    return boss;
}

+(Character *) createCharacter{
    Character * character = [[Character alloc]init];
    character.healt = 100;
    
    Armor * armor = [[Armor alloc] init];
    armor.name = @"Cloak";
    armor.healt = 5;
    character.armor = armor;
    
    Weapon * weapon =[[Weapon alloc]init];
    weapon.name = @"Fists";
    
    character.weapon = weapon;
    character.damage = 0;
    
    return character;
}

@end
