//
//  NSObject+ViewController.h
//  DCCategories
//
//  Created by quanzhizu on 2017/5/22.
//  Copyright © 2017年 quanzhizud2c. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ViewController)

#pragma mark - 获得控制器
/**
 *  根控制器
 *
 *  @return <#return value description#>
 */
- (UIViewController *)rootViewController;
/**
 *  当前导航控制器
 *
 *  @return <#return value description#>
 */
- (UINavigationController*)currentNavigationViewController;
/**
 *  当前控制器
 *
 *  @return <#return value description#>
 */
- (UIViewController *)currentViewController;

@end
