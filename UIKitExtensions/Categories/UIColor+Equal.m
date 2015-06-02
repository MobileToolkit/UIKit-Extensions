//
//  UIColor+Equal.m
//  UIKitExtensions
//
//  Created by Sebastian Owodziń on 28/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "UIColor+Equal.h"

@implementation UIColor (Equal)

- (BOOL)isEqualToColor:(UIColor *)color {
    CGFloat tolerance = 0.0001;
    CGFloat r, g, b, a, colorR, colorG, colorB, colorA;
    
    [self getRed: &r green:&g blue:&b alpha:&a];
    [color getRed: &colorR green:&colorG blue:&colorB alpha:&colorA];
    
    return ( fabs(r - colorR) < tolerance && fabs(g - colorG) < tolerance && fabs(b - colorB) < tolerance && fabs(a - colorA) < tolerance );
}

@end
