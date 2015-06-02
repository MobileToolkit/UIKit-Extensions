//
//  UIColor+Hex.h
//  UIKitExtensions
//
//  Created by Sebastian Owodziń on 30/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

/*!Converts a hexadecimal RGB color string to its UIColor equivalent.
 
 \param rgbColorString
 The hexadecimal RGB color string to convert.
 
 \returns The UIColor object corresponding to the specified hexadecimal RGB color string.
 */
+ (UIColor *)colorWithRGBHexString:(NSString *)rgbColorString;

/*!Converts a hexadecimal RGBA color string to its UIColor equivalent.
 
 \param rgbaColorString
 The hexadecimal RGBA color string to convert.
 
 \returns The UIColor object corresponding to the specified hexadecimal RGBA color string.
 */
+ (UIColor *)colorWithRGBAHexString:(NSString *)rgbaColorString;

/*!Converts a hexadecimal color string to its UIColor equivalent.
 
 \param argbColorString
 The hexadecimal ARGB color string to convert.
 
 \returns The UIColor object corresponding to the specified hexadecimal ARGB color string.
 */
+ (UIColor *)colorWithARGBHexString:(NSString *)argbColorString;

@end
