//
//  UIDevice+ExtendedInfo.h
//  UIKitExtensions
//
//  Created by Sebastian Owodziń on 30/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (ExtendedInfo)

@property(nonatomic, readonly) NSString * modelIdentifier;

@property(nonatomic, readonly) NSString * modelName;

@property(nonatomic, readonly) BOOL runsIOS6;
@property(nonatomic, readonly) BOOL runsIOS7;
@property(nonatomic, readonly) BOOL runsIOS8;

@property(nonatomic, readonly) BOOL isDebuggerConnected;

@property(nonatomic, readonly) BOOL isJailbroken;

@end
