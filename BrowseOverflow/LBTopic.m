//
//  LBTopic.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBTopic.h"

@implementation LBTopic

- (id)initWithName:(NSString *)newName tag:(NSString *)tag
{
    if (self = [self init]) {
        _name = [newName copy];
        _tag = [tag copy];
    }
    
    return self;
}

@end
