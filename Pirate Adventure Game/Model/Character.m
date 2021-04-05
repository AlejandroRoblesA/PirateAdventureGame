//
//  Character.m
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 04/04/21.
//

#import "Character.h"

@implementation Character

-(void) calculateAttributesForArmor: (nullable Armor *) armor withWeapon: (nullable Weapon *) weapon andHealthEffect: (int) healthEffect{
    
    if (armor != nil){
        self.health = self.health - self.armor.health + armor.health;
        self.armor = armor;
    }
    
    if (weapon != nil){
        self.damage = self.damage - self.weapon.damage + weapon.damage;
        self.weapon = weapon;
    }
    
    if (healthEffect != 0){
        self.health = self.health + healthEffect;
    }
}

@end
