//
//  UIColor+Hex_Tests.m
//  UIKitExtensions
//
//  Created by Sebastian Owodziń on 30/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

@import UIKit;
@import XCTest;

#import "UIColor+Equal.h"
#import "UIColor+Hex.h"

@interface UIColor_Hex_Tests : XCTestCase

@end

@implementation UIColor_Hex_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testColorWithRGBHexString {
    UIColor *color = [UIColor colorWithRGBHexString:@"643296"];
    
    UIColor *expectedColor = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:1.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"Must be equal");
    
    color = [UIColor colorWithRGBHexString:@"#963296"];
    
    expectedColor = [UIColor colorWithRed:150.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:1.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"Must be equal");
}

- (void)testColorWithRGBAHexString {
    UIColor *color = [UIColor colorWithRGBAHexString:@"643296C8"];
    
    UIColor *expectedColor = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"Must be equal");
    
    color = [UIColor colorWithRGBAHexString:@"#963296C8"];
    
    expectedColor = [UIColor colorWithRed:150.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"Must be equal");
}

- (void)testColorWithARGBHexString {
    UIColor *color = [UIColor colorWithARGBHexString:@"C8643296"];
    
    UIColor *expectedColor = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"Must be equal");
    
    color = [UIColor colorWithARGBHexString:@"#C8963296"];
    
    expectedColor = [UIColor colorWithRed:150.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"Must be equal");
}

@end
