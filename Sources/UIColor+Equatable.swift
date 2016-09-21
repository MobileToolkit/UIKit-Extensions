//
//  UIColor+Equatable.swift
//  UIKitExtensions
//
//  Created by Sebastian Owodzin on 25/04/2016.
//  Copyright © 2016 mobiletoolkit.org. All rights reserved.
//

import UIKit

public func == (lhs: UIColor, rhs: UIColor) -> Bool {
    let tolerance: CGFloat = 0.0001

    var lhsR: CGFloat = 0
    var lhsG: CGFloat = 0
    var lhsB: CGFloat = 0
    var lhsA: CGFloat = 0
    var rhsR: CGFloat = 0
    var rhsG: CGFloat = 0
    var rhsB: CGFloat = 0
    var rhsA: CGFloat = 0

    lhs.getRed(&lhsR, green: &lhsG, blue: &lhsB, alpha: &lhsA)
    rhs.getRed(&rhsR, green: &rhsG, blue: &rhsB, alpha: &rhsA)

    let redDiff = fabs(lhsR - rhsR)
    let greenDiff = fabs(lhsG - rhsG)
    let blueDiff = fabs(lhsB - rhsB)
    let alphaDiff = fabs(lhsA - rhsA)

    return redDiff < tolerance && greenDiff < tolerance && blueDiff < tolerance && alphaDiff < tolerance
}
