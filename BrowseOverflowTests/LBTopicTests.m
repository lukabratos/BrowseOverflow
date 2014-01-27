//
//  LBTopicTests.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBTopic.h"
#import "LBQuestion.h"
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

- (void)testForInitiallyEmptyQuestionList
{
    XCTAssertEqual([[topic recentQuestions] count], (NSUInteger)0, @"No questions yet, count should be zero");
}

- (void)testAddingAQuestionToTheList
{
    LBQuestion *question = [[LBQuestion alloc] init];
    [topic addQuestion:question];
    XCTAssertEqual([[topic recentQuestions] count], (NSUInteger)1, @"Add a question, and the count of questions should go up");
}

@end
