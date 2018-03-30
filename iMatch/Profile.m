//
//  Profile.m
//  iMatch
//
//  Created by Paulo Jose on 30/03/18.
//  Copyright © 2018 Paulo Jose. All rights reserved.
//

#import "Profile.h"

@implementation Profile

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype) initWithName: (NSString*) name andAge: (int) age andDesc: (NSString*) desc
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.desc = desc;
    }
    return self;
}

@end
