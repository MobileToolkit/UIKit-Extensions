//
//  UINavigationItem+IBOutlets.m
//  UIKit-Extensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "UINavigationItem+IBOutlets.h"

@implementation UINavigationItem (IBOutlets)

- (NSArray*) leftBarButtonItemsCollection {
    return self.leftBarButtonItems;
}

- (void) setLeftBarButtonItemsCollection:(NSArray *)leftBarButtonItemsCollection {
    self.leftBarButtonItems = [leftBarButtonItemsCollection sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"tag" ascending:YES]]];
}

- (NSArray*) rightBarButtonItemsCollection {
    return self.rightBarButtonItems;
}

- (void) setRightBarButtonItemsCollection:(NSArray *)rightBarButtonItemsCollection {
    self.rightBarButtonItems = [rightBarButtonItemsCollection sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"tag" ascending:YES]]];
}

@end
