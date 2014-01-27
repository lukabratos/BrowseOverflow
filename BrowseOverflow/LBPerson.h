//
//  LBPerson.h
//  BrowseOverflow
//
//  Created by Luka Bratoš on 27/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LBPerson : NSObject

@property (readonly, strong) NSString *name;
@property (readonly, strong) NSURL *avatarURL;

- (id)initWithName:(NSString *)name avatarLocation:(NSString *)avatar;

@end
