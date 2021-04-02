//
//  ViewController.m
//  Pirate Adventure Game
//
//  Created by Alejandro Robles on 31/03/21.
//

#import "ViewController.h"

@interface ViewController ()

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
    // Do any additional setup after loading the view.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
}
- (IBAction)northButtonPressed:(UIButton *)sender {
}
- (IBAction)eastButtonPressed:(UIButton *)sender {
}
- (IBAction)southButtonPressed:(UIButton *)sender {
}
- (IBAction)westButtonPressed:(id)sender {
}
- (IBAction)resetButtonPressed:(UIButton *)sender {
}

@end
