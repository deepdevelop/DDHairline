//
//  DDHairline.h
//  DDHairline
//
//  Created by ananwbr on 11/26/15.
//  Copyright © 2015 DeepDevelop. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, DDHairlineStyle) {
    DDHairlineStyleHorizontalTop,
    DDHairlineStyleHorizontalBottom,
    DDHairlineStyleVerticalLeft,
    DDHairlineStyleVerticalRight
};

@interface DDHairline : UIView

@property (nonatomic, assign) IBInspectable NSUInteger style;

@end
