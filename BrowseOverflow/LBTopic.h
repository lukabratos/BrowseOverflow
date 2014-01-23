//
//  LBTopic.h
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LBTopic : NSObject

@property (readonly) NSString *name;

- (id)initWithName:(NSString *)newName;

@end
