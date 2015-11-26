//
//  DDHairline.m
//  DDHairline
//
//  Created by ananwbr on 11/26/15.
//  Copyright © 2015 DeepDevelop. All rights reserved.
//

#import "DDHairline.h"

static const CGFloat DDHairlineWidth = 1;
static const CGFloat DDHairlineHeight = 1;

IB_DESIGNABLE

@implementation DDHairline

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect frame = self.frame;
    
    if (self.style == DDHairlineStyleHorizontalTop || self.style == DDHairlineStyleHorizontalBottom) {
        CGFloat constant = DDHairlineHeight / [[UIScreen mainScreen] scale];
        
        if (CGRectGetHeight(frame) == constant) {
            return;
        }
        
        if (self.style == DDHairlineStyleHorizontalBottom) {
            CGFloat offset = CGRectGetHeight(frame) - constant;
            frame.origin.y = frame.origin.y + offset;
        }
        
        frame.size.height = constant;
        self.frame = frame;
    } else {
        CGFloat constant = DDHairlineWidth / [[UIScreen mainScreen] scale];
        
        if (CGRectGetWidth(frame) == constant) {
            return;
        }
        
        if (self.style == DDHairlineStyleVerticalRight) {
            CGFloat offset = CGRectGetWidth(frame) - constant;
            frame.origin.x = frame.origin.x + offset;
        }
        
        frame.size.width = constant;
        self.frame = frame;
    }
}

@end
