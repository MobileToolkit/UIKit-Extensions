//
//  UINavigationItem+IBOutlets.h
//  UIKit-Extensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationItem (IBOutlets)

@property (nonatomic, strong) IBOutletCollection(UIBarButtonItem) NSArray * leftBarButtonItemsCollection;

@property (nonatomic, strong) IBOutletCollection(UIBarButtonItem) NSArray * rightBarButtonItemsCollection;

@end
