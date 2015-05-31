//
//  UIColor+Equal.h
//  UIKit-Extensions
//
//  Created by Sebastian Owodziń on 28/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

@import UIKit;

@interface UIColor (Equal)

/*!Compares the receiving color object to otherColor.
 
 Two color objects are equal if they hold RGBA components that are equal of the difference between the coresponding components is within the given tolerance (0.01%).
 
 \param otherColor
 The color object with which to compare the receiver.
 
 \returns YES if the contents of otherColor are equal to the contents of the receiver, otherwise NO.
 */
- (BOOL)isEqualToColor:(UIColor *)otherColor;

@end
