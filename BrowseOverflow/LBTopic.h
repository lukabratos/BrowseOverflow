//
//  LBTopic.h
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBQuestion.h"
#import <Foundation/Foundation.h>

@interface LBTopic : NSObject

@property (readonly) NSString *name;
@property (readonly) NSString *tag;

@property NSArray *questions;

- (id)initWithName:(NSString *)newName tag:(NSString *)tag;

- (NSArray *)sortQuestionsLatestFirst: (NSArray *)questionList;
- (NSArray *)recentQuestions;
- (void)addQuestion:(LBQuestion *)question;

@end
