//
//  NSObject+ViewController.m
//  DCCategories
//
//  Created by quanzhizu on 2017/5/22.
//  Copyright © 2017年 quanzhizud2c. All rights reserved.
//

#import "NSObject+ViewController.h"

@implementation NSObject (ViewController)

#pragma mark - 获得控制器
- (id<UIApplicationDelegate>)applicationDelegate
{
    return [UIApplication sharedApplication].delegate;
}

- (UIViewController *)rootViewController; {
    return self.applicationDelegate.window.rootViewController;
}

- (UINavigationController*)currentNavigationViewController
{
    UIViewController* currentViewController = [self currentViewController];
    return currentViewController.navigationController;
}

- (UIViewController *)currentViewController
{
    UIViewController* rootViewController = self.rootViewController;
    return [self currentViewControllerFrom:rootViewController];
}

/**
 *  返回当前的控制器,以viewController为节点开始寻找
 */
- (UIViewController*)currentViewControllerFrom:(UIViewController*)viewController
{
    //传入的根节点控制器是导航控制器
    if ([viewController isKindOfClass:[UINavigationController class]])
    {
        UINavigationController* navigationController = (UINavigationController *)viewController;
        return [self currentViewControllerFrom:navigationController.viewControllers.lastObject];
    }
    else if([viewController isKindOfClass:[UITabBarController class]]) //传入的根节点控制器是UITabBarController
    {
        UITabBarController* tabBarController = (UITabBarController *)viewController;
        return [self currentViewControllerFrom:tabBarController.selectedViewController];
    }
    else if(viewController.presentedViewController != nil)  //传入的根节点控制器是被展现出来的控制器
    {
        return [self currentViewControllerFrom:viewController.presentedViewController];
    }
    else
    {
        return viewController;
    }
}


@end
