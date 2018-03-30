//
//  ProfileCardXIBView.h
//  iMatch
//
//  Created by Paulo Jose on 30/03/18.
//  Copyright © 2018 Paulo Jose. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Profile.h"

@interface ProfileCardXIBView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *cardImage;
@property (weak, nonatomic) IBOutlet UILabel *cardInfoLabel;
@property (strong, nonatomic) IBOutlet UIView *contentView;

@property Profile *profile;

- (void) customInit;
- (void) remove:(BOOL) like; 

@end
