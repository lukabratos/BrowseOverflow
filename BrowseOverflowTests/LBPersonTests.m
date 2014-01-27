//
//  LBPersonTests.m
//  BrowseOverflow
//
//  Created by Luka Bratoš on 27/01/14.
//  Copyright (c) 2014 Luka. All rights reserved.
//

#import "LBPerson.h"
#import <XCTest/XCTest.h>

@interface LBPersonTests : XCTestCase
{
    LBPerson *person;
}

@end

@implementation LBPersonTests

- (void)setUp
{
    [super setUp];
    
    person = [[LBPerson alloc] initWithName:@"Luka" avatarLocation:@"www.lukabratos.me/avatar.png"];
}

- (void)tearDown
{
    [super tearDown];
    
    person = nil;
}

- (void)testThatPersonHasTheRightName
{
    XCTAssertEqualObjects(person.name, @"Luka", @"expecting a person to provide its name");
}

- (void)testThatPersonHasAnAvatarURL
{
    XCTAssertEqualObjects([person.avatarURL absoluteString], @"www.lukabratos.me/avatar.png", "The Person's avatar should be represented by a URL");
}

@end
