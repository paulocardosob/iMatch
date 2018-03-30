//
//  ProfilesModel.m
//  iMatch
//
//  Created by Paulo Jose on 30/03/18.
//  Copyright © 2018 Paulo Jose. All rights reserved.
//

#import "ProfilesModel.h"
#import "Profile.h"



@implementation ProfilesModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.profileDescription = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
        
        self.listOfNames = [[NSMutableArray alloc] initWithObjects:@"Paulo", @"José", @"Pedro", @"Joao", @"Carlos", @"Douglas", @"Mateus", @"Matheus", @"Rafael", @"John", @"Ismael", @"Joaquim", @"Tiao", @"Gilmar", @"Lula", @"Micahel", @"Paul", @"Ana", @"Carolina", @"Roberta", @"Miranda", @"Kattia", @"Catia", @"Anna", @"Taylor", @"Sheila", @"Maria", @"Julia", @"Andreia", @"Andrea", @"Mariana", @"Thais", @"Katy", nil];
        
        [self populateProfiles];


    }
    return self;
    
}

- (void) populateProfiles {
    
    _profiles = [[NSMutableArray alloc] init];
    
    for(int i = 0; i < [_listOfNames count]; i++) {
        
        NSString *desc = _profileDescription;
        
        NSString *name = [_listOfNames objectAtIndex:i];
        int age = arc4random_uniform(10) + 20;
        
        Profile *p = [[Profile alloc] initWithName: name andAge: age andDesc: desc];
        
        [_profiles addObject:p];
        
    }
    
}

@end
