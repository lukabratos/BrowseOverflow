//
//  LBQuestionTests.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBQuestion.h"
#import <XCTest/XCTest.h>

@interface LBQuestionTests : XCTestCase
{
    LBQuestion *question;
}

@end

@implementation LBQuestionTests

- (void)setUp
{
    [super setUp];
    
    question = [[LBQuestion alloc] init];
    question.date = [NSDate distantPast];
    question.title = @"much test. so cool. wow!";
    question.score = 1337;
}

- (void)tearDown
{
    [super tearDown];
    
    question = nil;
}

- (void)testQuestionHasADate
{
    NSDate *testDate = [NSDate distantPast];
    question.date = testDate;
    
    XCTAssertEqualObjects(question.date, testDate, @"Question needs to provide its date");
}

- (void)testQuestionsKeepScore
{
    XCTAssertEqual(question.score, 1337, @"Questions need a numeric score");
}

- (void)testQuestionHasATitle
{
    XCTAssertEqualObjects(question.title, @"much test. so cool. wow!", @"Question should know its title");
}

@end
