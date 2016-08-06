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
        XCTAssertEqual(UIColor.redColor(), UIColor.redColor())

        XCTAssertNotEqual(UIColor.blueColor(), UIColor.redColor())
    }

    func testEqualCustomColors() {
        let expectedColor = UIColor(red: 100.0/255.0, green: 50.0/255.0, blue: 150.0/255.0, alpha: 200.0/255.0)

        XCTAssertEqual(UIColor(red: 100.0/255.0, green: 50.0/255.0, blue: 150.0/255.0, alpha: 200.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 101.0/255.0, green: 50.0/255.0, blue: 150.0/255.0, alpha: 200.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 100.0/255.0, green: 51.0/255.0, blue: 150.0/255.0, alpha: 200.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 100.0/255.0, green: 50.0/255.0, blue: 151.0/255.0, alpha: 200.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 100.0/255.0, green: 50.0/255.0, blue: 150.0/255.0, alpha: 201.0/255.0), expectedColor) // alpha is different
    }

}
