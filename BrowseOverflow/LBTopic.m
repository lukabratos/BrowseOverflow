//
//  LBTopic.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBTopic.h"

@implementation LBTopic

- (id)initWithName:(NSString *)newName
{
    if (self = [self init]) {
        _name = [newName copy];
    }
    
    return self;
}

@end