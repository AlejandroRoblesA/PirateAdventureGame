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

@interface ViewController ()

@property (strong, nonatomic) NSArray * tiles;
@property (strong, nonatomic) Character * character;
@property (strong, nonatomic) Boss * boss;
@property (nonatomic) CGPoint currentPoint;

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
}
- (IBAction)northButtonPressed:(UIButton *)sender {
}
- (IBAction)eastButtonPressed:(UIButton *)sender {
}
- (IBAction)southButtonPressed:(UIButton *)sender {
}
- (IBAction)westButtonPressed:(UIButton *)sender {
}
- (IBAction)resetButtonPressed:(UIButton *)sender {
}

-(void) setupGame{
    self.tiles = [Factory createTiles];
    self.character = [Factory createCharacter];
    self.boss = [Factory createBoss];
    
    self.currentPoint = CGPointMake(0,0);
}

@end
