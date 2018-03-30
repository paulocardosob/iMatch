//
//  Profile.h
//  iMatch
//
//  Created by Paulo Jose on 30/03/18.
//  Copyright © 2018 Paulo Jose. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

@property NSString *name;
@property int age;
@property NSString *desc;

- (instancetype) initWithName: (NSString*) name andAge: (int) age andDesc: (NSString*) desc;

@end
