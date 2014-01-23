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

@end

@implementation LBTopicTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testThatTopicExists
{
    LBTopic *newTopic = [[LBTopic alloc] init];
    XCTAssertNotNil(newTopic, @"should be able to create a Topic instance");
}

- (void)testThatTopicCanBeNamed
{
    LBTopic *namedTopic = [[LBTopic alloc] initWithName:@"iPhone" tag:@"iphone"];
    XCTAssertEqualObjects(namedTopic.name, @"iPhone", @"the Topic should have the name I gave it");
}

- (void)testThatTopicHasATag
{
    LBTopic *taggedTopic = [[LBTopic alloc] initWithName:@"iPhone" tag:@"iphone"];
    XCTAssertEqualObjects(taggedTopic.tag, @"iphone", @"Topic need to have tags");
}

@end
