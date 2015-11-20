//
//  ProfiencySampleTests.m
//  ProfiencySampleTests
//
//  Created by Ansari on 13/11/15.
//  Copyright (c) 2015 Ansari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ListTableViewController.h"
#import "Utils.h"
#import "NSDictionary+safety.h"

@interface ProfiencySampleTests : XCTestCase
@property (nonatomic, strong) ListTableViewController *tableViewController;
@end

@implementation ProfiencySampleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.tableViewController= [[ListTableViewController alloc]init];
}

#pragma mark Testing TableViewController

-(void)testTableViewLoad
{
    XCTAssertNotNil(self.tableViewController.view, @"TableView not loaded");
}

- (void)testCheckConnection {
    XCTAssertTrue([Utils checkReachability], @"Internet connection failed");
}

-(void)testCheckNull {
    NSDictionary *dict = @{@"Title":@"Beavers"};
    XCTAssertFalse([dict safeObjectForKey:dict], @"Null validation failed");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
