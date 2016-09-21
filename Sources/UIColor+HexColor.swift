//
//  UIColor+HexColor.swift
//  UIKitExtensions
//
//  Created by Sebastian Owodzin on 04/08/2016.
//  Copyright © 2016 mobiletoolkit.org. All rights reserved.
//

import UIKit

extension UIColor {

    public convenience init(rgba: UInt32) {
        let red = CGFloat((rgba & 0xFF000000) >> 24)/255
        let green = CGFloat((rgba & 0xFF0000) >> 16)/255
        let blue = CGFloat((rgba & 0xFF00) >> 8)/255
        let alpha = CGFloat(rgba & 0xFF)/255

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    public convenience init(argb: UInt32) {
        let alpha = CGFloat((argb & 0xFF000000) >> 24)/255
        let red = CGFloat((argb & 0xFF0000) >> 16)/255
        let green = CGFloat((argb & 0xFF00) >> 8)/255
        let blue = CGFloat(argb & 0xFF)/255

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    public convenience init(rgb: UInt32) {
        let red = CGFloat((rgb & 0xFF0000) >> 16)/255
        let green = CGFloat((rgb & 0xFF00) >> 8)/255
        let blue = CGFloat(rgb & 0xFF)/255

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }

    public convenience init(rgbaString: String) {
        let hexString = rgbaString.trimmingCharacters(in: CharacterSet.whitespaces)
        let scanner = Scanner(string: hexString)

        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }

        var color: UInt32 = 0
        scanner.scanHexInt32(&color)

        self.init(rgba: color)
    }

    public convenience init(argbString: String) {
        let hexString = argbString.trimmingCharacters(in: CharacterSet.whitespaces)
        let scanner = Scanner(string: hexString)

        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }

        var color: UInt32 = 0
        scanner.scanHexInt32(&color)

        self.init(argb: color)
    }

    public convenience init(rgbString: String) {
        let hexString = rgbString.trimmingCharacters(in: CharacterSet.whitespaces)
        let scanner = Scanner(string: hexString)

        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }

        var color: UInt32 = 0
        scanner.scanHexInt32(&color)

        self.init(rgb: color)
    }

}
