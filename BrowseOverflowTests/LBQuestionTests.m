//
//  LBQuestionTests.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface LBQuestionTests : XCTestCase

@end

@implementation LBQuestionTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testQuestionHasADate
{
    LBQuestion *question = [[LBQuestion alloc] init];
    XCTAssertTrue(question.date, @"Question needs to provide its date");
}

@end