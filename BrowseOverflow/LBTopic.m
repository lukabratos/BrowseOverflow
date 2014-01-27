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

- (NSArray *)sortQuestionsLatestFirst: (NSArray *)questionList {
    return [self.questions sortedArrayUsingComparator:^(id obj1, id obj2) {
        LBQuestion *question1 = (LBQuestion *)obj1;
        LBQuestion *question2 = (LBQuestion *)obj2;
        
        return [question2.date compare:question1.date];
    }];
}

- (NSArray *)recentQuestions
{
    return [self sortQuestionsLatestFirst:self.questions];
}

- (void)addQuestion:(LBQuestion *)question
{
    NSArray *newQuestions = [self.questions arrayByAddingObject:question];
    if([newQuestions count] > 20) {
        newQuestions = [self sortQuestionsLatestFirst:newQuestions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
    
    self.questions = newQuestions;
}

@end
