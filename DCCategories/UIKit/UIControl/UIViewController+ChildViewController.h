//
//  UIViewController+ChildViewController.h
//  DCCategories
//
//  Created by quanzhizu on 2017/5/22.
//  Copyright © 2017年 quanzhizud2c. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ChildViewController)

- (void)addChild:(UIViewController *)vc;

- (void)addChild:(UIViewController *)vc animation:(void (^)(void))inAnimation;

- (void)addChild:(UIViewController *)vc inRect:(CGRect)rect;

- (void)addChild:(UIViewController *)vc inRect:(CGRect)rect animation:(void (^)(void))inAnimation;

- (void)addChild:(UIViewController *)vc container:(UIView *)view;

- (void)addChild:(UIViewController *)vc container:(UIView *)view inRect:(CGRect)rect;

- (void)addChild:(UIViewController *)vc container:(UIView *)view inRect:(CGRect)rect animation:(void (^)(void))inAnimation;

- (void)removeChild:(UIViewController *)vc;

- (void)removeChild:(UIViewController *)vc animation:(void (^)(void))outAnimation;

- (void)removeChild:(UIViewController *)vc inContainer:(UIView *)view;

- (void)removeChild:(UIViewController *)vc inContainer:(UIView *)view animation:(void (^)(void))outAnimation;

// 默认是在self.view中操作
- (void)replace:(UIViewController *)oldVC withNew:(UIViewController *)newVC animations:(void (^)(void))animations;

// 在container中进行操作
- (void)replace:(UIViewController *)oldVC withNew:(UIViewController *)newVC container:(UIView *)container animations:(void (^)(void))animations;


@end
