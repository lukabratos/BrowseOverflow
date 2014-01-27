//
//  LBQuestion.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBQuestion.h"

@implementation LBQuestion

- (id)init
{
    if (self = [super init]) {
        self.answerSet = [[NSMutableSet alloc] init];
    }
    
    return self;
}

- (void)addAnswer:(LBAnswer *)answer
{
    [self.answerSet addObject:answer];
}

- (NSArray *)answers
{
    return [[self.answerSet allObjects] sortedArrayUsingSelector:@selector(compare:)];
}

@end
