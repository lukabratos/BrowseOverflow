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
    NSArray *sortedQuestions = [self.questions sortedArrayUsingComparator:^(id obj1, id obj2) {
        LBQuestion *question1 = (LBQuestion *)obj1;
        LBQuestion *question2 = (LBQuestion *)obj2;
        
        return [question2.date compare:question1.date];
    }];
    
    if([sortedQuestions count] < 21) {
        return  sortedQuestions;
    }
    else {
        return [sortedQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
}

- (void)addQuestion:(LBQuestion *)question
{
    self.questions = [self.questions arrayByAddingObject:question];
}

@end
