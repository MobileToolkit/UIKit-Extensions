//
//  UIColor+Pastel.swift
//  UIKitExtensions
//
//  Created by Sebastian Owodzin on 02/04/2017.
//  Copyright © 2017 mobiletoolkit.org. All rights reserved.
//

import UIKit

extension UIColor {

    /// Generates random pastel color
    public var pastelColor: UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0

        getRed(&red, green: &green, blue: &blue, alpha: nil)

        let randomRed = CGFloat(arc4random() % 256 ) / 256
        let randomGreen = CGFloat(arc4random() % 256 ) / 256
        let randomBlue = CGFloat(arc4random() % 256 ) / 256

        red = (red + randomRed) / 2
        green = (green + randomGreen) / 2
        blue = (blue + randomBlue) / 2

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

}
