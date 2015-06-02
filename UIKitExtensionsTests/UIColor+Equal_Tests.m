//
//  UIColor+Equal_Tests.m
//  UIKitExtensions
//
//  Created by Sebastian Owodziń on 28/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

@import UIKit;
@import XCTest;

#import "UIColor+Equal.h"

@interface UIColor_Equal_Tests : XCTestCase

@end

@implementation UIColor_Equal_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testIsEqualToColor {
    UIColor *color = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    UIColor *expectedColor = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"Must be equal");
}

@end
