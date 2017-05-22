//
//  UIView+SkitTool.h
//  DCCategories
//
//  Created by quanzhizu on 2017/5/22.
//  Copyright © 2017年 quanzhizud2c. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SkitTool)

/**
 *  设置倒角
 *
 *  @param view   <#view description#>
 *  @param color  <#color description#>
 *  @param width  <#width description#>
 *  @param radius <#radius description#>
 */
-(void)setRoundColor:(UIColor *)color lineWidth:(CGFloat)width radius:(CGFloat)radius;

@end
