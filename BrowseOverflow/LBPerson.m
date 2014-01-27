//
//  LBPerson.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 27/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBPerson.h"

@implementation LBPerson

- (id)initWithName:(NSString *)name avatarLocation:(NSString *)avatar
{
    if(self = [self init]) {
        _name = name;
        _avatarURL = [[NSURL alloc] initWithString:avatar];
    }
    
    return self;
}

@end
