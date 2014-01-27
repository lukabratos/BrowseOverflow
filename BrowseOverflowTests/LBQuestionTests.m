//
//  LBQuestionTests.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 23/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBAnswer.h"
#import "LBQuestion.h"
#import <XCTest/XCTest.h>

@interface LBQuestionTests : XCTestCase
{
    LBQuestion *question;
    LBAnswer *lowScore;
    LBAnswer *highScore;
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
    
    LBAnswer *accepted = [[LBAnswer alloc] init];
    accepted.score = 1;
    accepted.accepted = YES;
    [question addAnswer:accepted];
    
    lowScore = [[LBAnswer alloc] init];
    lowScore.score = -4;
    [question addAnswer:lowScore];
    
    highScore = [[LBAnswer alloc] init];
    highScore.score = 4;
    [question addAnswer:highScore];
}

- (void)tearDown
{
    [super tearDown];
    
    question = nil;
    lowScore = nil;
    highScore = nil;
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

- (void)testQuestionCanHaveAnswersAdded
{
    LBAnswer *answer = [[LBAnswer alloc] init];
    XCTAssertNoThrow([question addAnswer:answer], @"Must be able to add answers");
}

- (void)testAcceptedAnswerIsFirst
{
    XCTAssertTrue([[question.answers objectAtIndex: 0] isAccepted], @"Accepted answer comes first");
}
- (void)testHighScoreAnswerBeforeLow
{
    NSArray *answers = question.answers;
    NSInteger highIndex = [answers indexOfObject: highScore];
    NSInteger lowIndex = [answers indexOfObject: lowScore];
    XCTAssertTrue(highIndex < lowIndex, @"High-scoring answer comes first");
}

@end
