//
//  UIColor+Hex.m
//  UIKitExtensions
//
//  Created by Sebastian Owodziń on 30/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *)colorWithRGBHexString:(NSString *)rgbColorString {
    return [self colorWithRGBAHexString:[rgbColorString stringByAppendingString:@"ff"]];
}

+ (UIColor *)colorWithRGBAHexString:(NSString *)rgbaColorString {
    unsigned rgbaValue = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString:[self __prepareHexString:rgbaColorString]];
    [scanner setScanLocation:1];
    [scanner scanHexInt:&rgbaValue];
    
    return [self _fromRGBA:rgbaValue];
}

+ (UIColor *)colorWithARGBHexString:(NSString *)argbColorString {
    unsigned argbValue = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString:[self __prepareHexString:argbColorString]];
    [scanner setScanLocation:1];
    [scanner scanHexInt:&argbValue];
    
    return [self _fromARGB:argbValue];
}

#pragma mark Private Methods

+ (NSString *)__prepareHexString:(NSString *)hexString {
    return ( NSNotFound == [hexString rangeOfString:@"#" options:NSCaseInsensitiveSearch].location ? [@"#" stringByAppendingString:hexString] : hexString );
}

+ (UIColor *)_fromRGBA:(unsigned)rgbaValue {
    return [UIColor colorWithRed:((float)((rgbaValue & 0xFF000000) >> 24))/255.0
                           green:((float)((rgbaValue & 0xFF0000) >> 16))/255.0
                            blue:((float)((rgbaValue & 0xFF00) >> 8))/255.0
                           alpha:((float)(rgbaValue & 0xFF))/255.0];
}

+ (UIColor *)_fromARGB:(unsigned)argbValue {
    return [UIColor colorWithRed:((float)((argbValue & 0xFF0000) >> 16))/255.0
                           green:((float)((argbValue & 0xFF00) >> 8))/255.0
                            blue:((float)(argbValue & 0xFF))/255.0
                           alpha:((float)((argbValue & 0xFF000000) >> 24))/255.0];
}

@end
