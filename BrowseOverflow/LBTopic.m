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
        _questions = [[NSArray alloc] init];
    }
    
    return self;
}

- (NSArray *)recentQuestions
{
    return self.questions;
}

- (void)addQuestion:(LBQuestion *)question
{
    self.questions = [self.questions arrayByAddingObject:question];
}

@end
