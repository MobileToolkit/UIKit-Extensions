//
//  UIKitExtensionsTests.swift
//  UIKitExtensionsTests
//
//  Created by Sebastian Owodzin on 25/04/2016.
//  Copyright © 2016 mobiletoolkit.org. All rights reserved.
//

import XCTest
@testable import UIKitExtensions

class UIColor_Equatable_Tests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEqualColors() {
        XCTAssertTrue(UIColor.redColor() == UIColor.redColor())
        XCTAssertFalse(UIColor.blueColor() == UIColor.redColor())
    }

    func testEqualCustomColors() {
        let color = UIColor(red: 100.0/255.0, green:50.0/255.0, blue:150.0/255.0, alpha:200.0/255.0)
        let equalColor = UIColor(red: 100.0/255.0, green:50.0/255.0, blue:150.0/255.0, alpha:200.0/255.0)

        XCTAssertTrue(color == equalColor)

        let differentColor = UIColor(red: 100.0/255.0, green:51.0/255.0, blue:150.0/255.0, alpha:200.0/255.0)

        XCTAssertFalse(color == differentColor)
    }

}
