//
//  LBAnswer.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 27/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBAnswer.h"

@implementation LBAnswer

- (NSComparisonResult)compare:(LBAnswer *)otherAnswer
{
    if (self.isAccepted && !(otherAnswer.isAccepted)) {
        return NSOrderedAscending;
    }
    else if (!self.isAccepted && otherAnswer.accepted) {
        return NSOrderedDescending;
    }
    if (self.score > otherAnswer.score) {
        return NSOrderedAscending;
    }
    else if (self.score < otherAnswer.score) {
        return NSOrderedDescending;
    }
    else {
        return NSOrderedSame;
    }
}

@end
