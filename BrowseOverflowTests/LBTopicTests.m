//
//  LBTopicTests.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBTopic.h"
#import <XCTest/XCTest.h>

@interface LBTopicTests : XCTestCase
{
    LBTopic *topic;
}

@end

@implementation LBTopicTests

- (void)setUp
{
    [super setUp];
    
    topic = [[LBTopic alloc] initWithName:@"iPhone" tag:@"iphone"];
}

- (void)tearDown
{
    [super tearDown];
    
    topic = nil;
}

- (void)testThatTopicExists
{
    XCTAssertNotNil(topic, @"should be able to create a Topic instance");
}

- (void)testThatTopicCanBeNamed
{
    XCTAssertEqualObjects(topic.name, @"iPhone", @"the Topic should have the name I gave it");
}

- (void)testThatTopicHasATag
{
    XCTAssertEqualObjects(topic.tag, @"iphone", @"Topic need to have tags");
}

- (void)testForAListOfQuestions
{
    XCTAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]], @"Topics should provide a list of recent questions");
}

@end
