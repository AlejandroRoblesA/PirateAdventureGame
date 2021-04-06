//
//  ViewController.m
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 31/03/21.
//

#import "ViewController.h"
#import "Character.h"
#import "Boss.h"
#import "Factory.h"
#import "Tile.h"
#import "GameBrain.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray * tiles;
@property (strong, nonatomic) Character * character;
@property (strong, nonatomic) Boss * boss;
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) GameBrain * gameBrain;

@property (weak, nonatomic) IBOutlet UILabel     *healthLabel;
@property (weak, nonatomic) IBOutlet UILabel     *damageLabel;
@property (weak, nonatomic) IBOutlet UILabel     *weaponLabel;
@property (weak, nonatomic) IBOutlet UILabel     *armorLabel;
@property (weak, nonatomic) IBOutlet UILabel     *storyLabel;
@property (weak, nonatomic) IBOutlet UIButton    *actionButton;
@property (weak, nonatomic) IBOutlet UIImageView *itemImageView;
@property (weak, nonatomic) IBOutlet UIButton    *northButton;
@property (weak, nonatomic) IBOutlet UIButton    *eastButton;
@property (weak, nonatomic) IBOutlet UIButton    *southButton;
@property (weak, nonatomic) IBOutlet UIButton    *westButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupGame];
    
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    Tile * tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    [self.character calculateAttributesForArmor:tile.armor withWeapon:tile.weapon andHealthEffect:tile.healthEffect];
    
    [self updateTile];
    self.actionButton.enabled = NO;
}
- (IBAction)northButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTile];
}
- (IBAction)eastButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}
- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTile];
}
- (IBAction)westButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}
- (IBAction)resetButtonPressed:(UIButton *)sender {
    self.character = nil;
    self.boss = nil;
    self.tiles = nil;
    
    [self setupGame];
}

-(void) setupGame{
    self.tiles = [Factory createTiles];
    self.character = [Factory createCharacter];
    self.boss = [Factory createBoss];
    
    self.currentPoint = CGPointMake(0,0);
    
    self.gameBrain = [[GameBrain alloc] init];
    
    [self.character calculateAttributesForArmor:nil withWeapon:nil andHealthEffect:0];
    
    [self updateTile];
    [self updateButtons];
}

-(void) updateTile{
    self.actionButton.enabled = YES;
    
    Tile * tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex: self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.itemImageView.image = tileModel.itemImage;
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.armorLabel.text = self.character.armor.name;
    self.weaponLabel.text = self.character.weapon.name;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
}

-(void) updateButtons{
    
    self.westButton.hidden = ![self.gameBrain tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y) forTiles:self.tiles];
    
    self.eastButton.hidden = ![self.gameBrain tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y) forTiles:self.tiles];
    
    self.northButton.hidden = ![self.gameBrain tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1) forTiles:self.tiles];
    
    self.southButton.hidden = ![self.gameBrain tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1) forTiles:self.tiles];
}

@end
