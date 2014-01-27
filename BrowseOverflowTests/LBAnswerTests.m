//
//  LBAnswerTests.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 27/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBAnswer.h"
#import <XCTest/XCTest.h>

@interface LBAnswerTests : XCTestCase
{
    LBAnswer *answer;
    LBAnswer *otherAnswer;
}

@end

@implementation LBAnswerTests

- (void)setUp
{
    [super setUp];
    
    answer = [[LBAnswer alloc] init];
    answer.text = @"Le Answer Text";
    answer.person = [[LBPerson alloc] initWithName:@"Luka" avatarLocation:@"www.lukabratos.me/avatar.png"];
    answer.score = 1337;
    
    otherAnswer = [[LBAnswer alloc] init];
    otherAnswer.text = @"Random testing text.";
    otherAnswer.score = 1337;
}

- (void)tearDown
{
    [super tearDown];
    
    answer = nil;
}

- (void)testAnswerHasSomeText
{
    XCTAssertEqualObjects(answer.text, @"Le Answer Text", @"Answers need to contain some text");
}

- (void)testSomeoneProvidedTheAnswer
{
    XCTAssertTrue([answer.person isKindOfClass:[LBPerson class]], @"Person gave this answer");
}

- (void)testAnswersNotAcceptedByDefault
{
    XCTAssertFalse(answer.accepted, @"Answer not accepted by default");
}

- (void)testAnswerCanBeAccepted
{
    XCTAssertNoThrow(answer.accepted = YES, @"It is possible to accept an answer");
}

- (void)testAnswerHasAScore
{
    XCTAssertTrue(answer.score == 1337, @"Answer's score can be retrieved");
}

- (void)testAcceptedAnswerComesBeforeUnaccepted
{
    otherAnswer.accepted = YES;
    otherAnswer.score = answer.score + 10;
    
    XCTAssertEqual([answer compare:otherAnswer], NSOrderedDescending, @"Accepted answer should come first");
    XCTAssertEqual([otherAnswer compare:answer], NSOrderedAscending, @"Unaccepted answer should come last");
}

- (void)testAnswersWithEqualScoresCompareEqually
{
    XCTAssertEqual([answer compare:otherAnswer], NSOrderedSame, @"Both answers of equal rank");
    XCTAssertEqual([otherAnswer compare: answer], NSOrderedSame, @"Each answer has the same rank");
}

- (void)testLowerScoringAnswerComesAfterHigher
{
    otherAnswer.score = answer.score + 10;
    XCTAssertEqual([answer compare: otherAnswer], NSOrderedDescending, @"Higher score comes first");
    XCTAssertEqual([otherAnswer compare: answer], NSOrderedAscending, @"Lower score comes last");
}
   
@end
