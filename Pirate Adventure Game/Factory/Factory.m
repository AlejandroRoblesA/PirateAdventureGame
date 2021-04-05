//
//  Factory.m
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 04/04/21.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory

+(Boss *) createBoss{
    Boss * boss = [[Boss alloc] init];
    boss.health = 65;
    return boss;
}

+(Character *) createCharacter{
    Character * character = [[Character alloc] init];
    character.health = 100;
    
    Armor * armor = [[Armor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    Weapon * weapon =[[Weapon alloc] init];
    weapon.name = @"Fists";
    character.weapon = weapon;
    
    character.damage = 0;
    
    return character;
}

+(NSArray *) createTiles{
    
    Tile * tile1 = [[Tile alloc] init];
    tile1.story = @"Como el heroe más poderoso de estos lugares, necesitamos que emprendas un peligroso viaje y derrotes al megajefe. ¿Qué tal una espada oxidada e inútil para empezar?";
    tile1.itemImage = [UIImage imageNamed:@"sword"];
    Weapon *bluntedSword = [[Weapon alloc] init];
    bluntedSword.name = @"Rusty Sword";
    bluntedSword.damage = 12;
    tile1.actionButtonName = @"Toma la espada";
    tile1.healthEffect = 0;
    tile1.weapon = bluntedSword;
    
    Tile * tile2 = [[Tile alloc] init];
    tile2.story = @"Te has encontrado con un armero. Tu endeble capa apolillada no será de mucha utilidad, ¿qué tal un bonito conjunto de armadura de acero? No te preocupes, es gratis, porque eres increíble.";
    tile2.itemImage = [UIImage imageNamed:@"armor"];
    Armor * armor = [[Armor alloc] init];
    armor.name = @"Steel Armor";
    armor.health = 8;
    tile2.armor = armor;
    tile2.actionButtonName = @"Tomar Armadura";
    tile2.healthEffect = 0;
    
    Tile * tile3 = [[Tile alloc] init];
    tile3.story = @"Hay un tipo de aspecto misterioso en la distancia. Se ve inquieto y mamá siempre decía que no habláramos con extraños, pero estamos perdidos y nuestro GPS medieval está roto. Mejor deténgase y pregunte por direcciones. Tenemos nuestra espada oxidada de todos modos, ¿Verdad?";
    tile3.itemImage = [UIImage imageNamed:@"druid"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Ask Dude";
    
    NSMutableArray * firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    Tile * tile4 = [[Tile alloc] init];
    tile4.story = @"Oye, encontraste un perro, parece que quiere seguirte. Los perros son geniales en la batalla y también te defenderán, además te mantendrá abrigado por la noche. Sería un pecado dejarlo atrás.";
    tile4.itemImage = [UIImage imageNamed:@"dog"];
    Armor * dogArmor = [[Armor alloc] init];
    dogArmor.health = 20;
    dogArmor.name = @"Dog";
    Weapon * dogWeapon = [[Weapon alloc] init];
    dogWeapon.name = @"Fido";
    dogWeapon.damage = 10;
    tile4.armor = dogArmor;
    tile4.weapon = dogWeapon;
    tile4.actionButtonName = @"Adoptar";
    tile4.healthEffect = 0;
    
    Tile * tile5 = [[Tile alloc] init];
    tile5.story = @"Encontraste un cofre, al abrirlo revela un hermoso hacha de dos cabezas. ¿Debería tomarlo?";
    tile5.itemImage = [UIImage imageNamed: @"axe"];
    Weapon * axeWeapon = [[Weapon alloc] init];
    axeWeapon.name = @"Axe";
    axeWeapon.damage = 17;
    tile5.healthEffect = 0;
    tile5.weapon = axeWeapon;
    tile5.actionButtonName = @"Tomar hacha";
    
    Tile * tile6 = [[Tile alloc] init];
    tile6.story = @"¡Oh no, una trampa! Estás capturado y tienes que luchar por tu vida.";
    tile6.itemImage = [UIImage imageNamed:@"bandit"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"¡Mata a todos!";
    
    NSMutableArray * secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    Tile * tile7 = [[Tile alloc] init];
    tile7.story = @"¿Qué es eso en el horizonte? ¡Parece un tiburón andante con un láser! ¿Deberíamos atacarlo?";
    tile7.itemImage = [UIImage imageNamed:@"shark"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"¡Conviértelo en sushi!";
    
    Tile * tile8 = [[Tile alloc] init];
    tile8.story = @"¡Oh, no! El terror de los cielos, el Dragón, nos ha visto, se precipita hacia nosotros, ¡Corre, corre!";
    tile8.itemImage = [UIImage imageNamed:@"wyvern"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Huir";
    
    Tile * tile9 = [[Tile alloc] init];
    tile9.story = @"¿Qué es esto, otro cofre del tesoro? Abramos ese bebé y repitamos el botín.";
    tile9.itemImage = [UIImage imageNamed:@"treasure"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Tomar tesoro";
    
    NSMutableArray * thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    Tile * tile10 = [[Tile alloc] init];
    tile10.story = @"Un grupo de bandidos inútiles intenta robar el botín que tanto te costó ganar.";
    tile10.itemImage = [UIImage imageNamed:@"bandit"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Muéstrales quién es el jefe";
    
    Tile * tile11 = [[Tile alloc] init];
    tile11.story = @"Encontraste un lago apacible. Parece benigno, pero nunca se sabe qué peligros se esconden debajo de la superficie silenciosa.";
    tile11.itemImage = [UIImage imageNamed:@"lake"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Nadar en el lago";
    
    Tile * tile12 = [[Tile alloc] init];
    tile12.story = @"Esta es la culminación de tu entrenamiento y tu exploración, el momento de la verdad, para lo que fuiste hecho: Enfréntate al megajefe.";
    tile12.itemImage = [UIImage imageNamed:@"chicken"];
    tile12.healthEffect = -12;
    tile12.actionButtonName = @"¡Pelea!";
    
    NSMutableArray * fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject: tile11];
    [fourthColumn addObject: tile12];
    
    
    NSArray * tiles = [[NSArray alloc] initWithObjects: firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tiles;
}

@end
