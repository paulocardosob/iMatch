//
//  ViewController.m
//  iMatch
//
//  Created by Paulo Jose on 30/03/18.
//  Copyright © 2018 Paulo Jose. All rights reserved.
//

#import "ViewController.h"
#import "ProfileViewController.h"
#import "ProfileCardXIBView.h"
#import "ProfilesModel.h"
#import "Profile.h"


@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *cardCollection;

@property ProfilesModel *profilesModel;
@property NSMutableArray *cards;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Profile" style:UIBarButtonItemStyleDone target:self action:@selector(showProfile:)];
    
    _profilesModel = [[ProfilesModel alloc] init];
    _cards = [[NSMutableArray alloc] init];
    
    for (Profile *profile in _profilesModel.profiles) {
        ProfileCardXIBView *card = [[ProfileCardXIBView alloc] initWithFrame:CGRectMake(16.0, 96.0, 350.0, 350.0)];
        
        card.profile = profile;
        
        card.cardInfoLabel.text = [NSString stringWithFormat:@"%@, %d", profile.name, profile.age];
        
        [_cards addObject:card];
        [self.view addSubview:card];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showProfile:(id) sender {
    ProfileViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"profile"];
    
    CATransition *transition = [[CATransition alloc] init];
    transition.duration = 0.25;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [self.view.window.layer addAnimation:transition forKey:kCATransition];
    
    [self presentViewController:vc animated:NO completion:nil];
}

- (IBAction)didPressActionButton:(id)sender {
    
    ProfileCardXIBView *cardToRemove = [_cards objectAtIndex:[_cards count] - 1];

    if ([sender tag] == 1) {
        [cardToRemove remove: YES];
    } else {
        [cardToRemove remove: NO];
    }
    
//    CGRect newFrame;
//    CGFloat angle;
//
//    if ([sender tag]) {
//        newFrame = CGRectMake(cardToRemove.layer.frame.origin.x + 400, cardToRemove.layer.frame.origin.y + 10, cardToRemove.layer.frame.size.width, cardToRemove.layer.frame.size.height);
//        angle = 1;
//    } else {
//        newFrame = CGRectMake(cardToRemove.layer.frame.origin.x - 400, cardToRemove.layer.frame.origin.y + 10, cardToRemove.layer.frame.size.width, cardToRemove.layer.frame.size.height);
//        angle = -1;
//    }
//
//
//    [UIView animateWithDuration:0.5 animations:^{
//
//        [cardToRemove setTransform:CGAffineTransformMakeRotation(angle) ];
//        [cardToRemove setFrame:newFrame];
//
//    }completion:^(BOOL completed){
//
//        [cardToRemove removeFromSuperview];
//    }];
    

    [_cards removeObject:cardToRemove];
    
    
}


@end
