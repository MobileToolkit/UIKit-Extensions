//
//  UIColor+HexColor_Tests.swift
//  UIKitExtensions
//
//  Created by Sebastian Owodzin on 04/08/2016.
//  Copyright © 2016 mobiletoolkit.org. All rights reserved.
//

import XCTest
@testable import UIKitExtensions

class UIColor_HexColor_Tests: XCTestCase {

    func testRGBColorUInt32() {
        let expectedColor = UIColor(rgb: 0xCC6699)

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 1.0), expectedColor) // blue is different
    }

    func testRGBAColorUInt32() {
        let expectedColor = UIColor(rgba: 0xCC669964)

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different
    }

    func testARGBColorUInt32() {
        let expectedColor = UIColor(argb: 0x64CC6699)

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different
    }

    func testRGBColorString() {
        var expectedColor = UIColor(rgbString: "CC6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 1.0), expectedColor) // blue is different

        expectedColor = UIColor(rgbString: "cc6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 1.0), expectedColor) // blue is different

        expectedColor = UIColor(rgbString: "0xCC6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 1.0), expectedColor) // blue is different

        expectedColor = UIColor(rgbString: "0xcc6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 1.0), expectedColor) // blue is different

        expectedColor = UIColor(rgbString: "#CC6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 1.0), expectedColor) // blue is different

        expectedColor = UIColor(rgbString: "#cc6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 1.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 1.0), expectedColor) // blue is different
    }

    func testRGBAColorString() {
        var expectedColor = UIColor(rgbaString: "CC669964")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(rgbaString: "cc669964")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(rgbaString: "0xCC669964")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(rgbaString: "0xcc669964")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(rgbaString: "#CC669964")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(rgbaString: "#cc669964")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different
    }

    func testARGBColorString() {
        var expectedColor = UIColor(argbString: "64CC6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(argbString: "64cc6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(argbString: "0x64CC6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(argbString: "0x64cc6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(argbString: "#64CC6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different

        expectedColor = UIColor(argbString: "#64cc6699")

        XCTAssertEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor)

        XCTAssertNotEqual(UIColor(red: 205.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // red is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 103.0/255.0, blue: 153.0/255.0, alpha: 100.0/255.0), expectedColor) // green is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 154.0/255.0, alpha: 100.0/255.0), expectedColor) // blue is different
        XCTAssertNotEqual(UIColor(red: 204.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 101.0/255.0), expectedColor) // alpha is different
    }

}
