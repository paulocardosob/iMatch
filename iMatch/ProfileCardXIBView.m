//
//  ProfileCardXIBView.m
//  iMatch
//
//  Created by Paulo Jose on 30/03/18.
//  Copyright © 2018 Paulo Jose. All rights reserved.
//

#import "ProfileCardXIBView.h"

@implementation ProfileCardXIBView

- (instancetype) initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    
    if (self) {
        [self customInit];
    }
    
    return self;
}

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame: frame];
    
    if (self) {
        [self customInit];
    }
    
    return self;
    
}

- (void) customInit {
    UIView *contentView = [[[NSBundle mainBundle] loadNibNamed:@"ProfileCardXIB" owner:self options:nil] firstObject];
    [self addSubview:contentView];
    
//    self.cardInfoLabel.text = [NSString stringWithFormat:@"%@, %d", _profile.name, _profile.age];
    
    self.contentView.frame = self.bounds;
    
    self.layer.cornerRadius = 10;
    self.layer.masksToBounds = YES;
    
}

- (void) remove:(BOOL) like {
    
    CGRect newFrame;
    CGFloat angle;
    
    if (like) {
        newFrame = CGRectMake(self.layer.frame.origin.x + 400, self.layer.frame.origin.y + 10, self.layer.frame.size.width, self.layer.frame.size.height);
        angle = 1;
    } else {
        newFrame = CGRectMake(self.layer.frame.origin.x - 400, self.layer.frame.origin.y + 10, self.layer.frame.size.width, self.layer.frame.size.height);
        angle = -1;
    }
   

    [UIView animateWithDuration:0.5 animations:^{
        
        [self setTransform:CGAffineTransformMakeRotation(angle) ];
        [self setFrame:newFrame];
        
    }completion:^(BOOL completed){
        
        [self removeFromSuperview];
    }];
}

@end
