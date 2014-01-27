//
//  LBAnswer.h
//  BrowseOverflow
//
//  Created by Luka Bratoš on 27/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBPerson.h"
#import <Foundation/Foundation.h>

@interface LBAnswer : NSObject

@property NSString *text;
@property LBPerson *person;
@property (getter = isAccepted) BOOL accepted;
@property NSInteger score;

- (NSComparisonResult)compare:(LBAnswer *)otherAnswer;

@end
