//
//  ProfilesModel.h
//  iMatch
//
//  Created by Paulo Jose on 30/03/18.
//  Copyright © 2018 Paulo Jose. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProfilesModel : NSObject

@property NSMutableArray *profiles;
@property NSString *profileDescription;

@property NSMutableArray *listOfNames;

- (void) populateProfiles;

@end
