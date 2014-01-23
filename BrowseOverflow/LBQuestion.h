//
//  LBQuestion.h
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LBQuestion : NSObject

@property (retain) NSDate *date;

@property (copy) NSString *title;

@property NSInteger score;

@end
