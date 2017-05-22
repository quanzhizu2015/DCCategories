//
//  UIView+SkitTool.m
//  DCCategories
//
//  Created by quanzhizu on 2017/5/22.
//  Copyright © 2017年 quanzhizud2c. All rights reserved.
//

#import "UIView+SkitTool.h"

@implementation UIView (SkitTool)

-(void)setRoundColor:(UIColor *)color lineWidth:(CGFloat)width radius:(CGFloat)radius{
    
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

@end
