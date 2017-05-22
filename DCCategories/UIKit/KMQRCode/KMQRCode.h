//
//  KMQRCode.h
//  buyer
//
//  Created by quanzhizu on 16/5/9.
//  Copyright © 2016年 杭州迪尔西. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMQRCode : NSObject

+ (CIImage *)createQRCodeImage:(NSString *)source;
+ (UIImage *)resizeQRCodeImage:(CIImage *)image withSize:(CGFloat)size;
+ (UIImage *)specialColorImage:(UIImage*)image withRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
+ (UIImage *)addIconToQRCodeImage:(UIImage *)image withIcon:(UIImage *)icon withIconSize:(CGSize)iconSize;
+ (UIImage *)addIconToQRCodeImage:(UIImage *)image withIcon:(UIImage *)icon withScale:(CGFloat)scale;


/**
 将image添加到BackImage上  image居中在BackImage中

 @param image     居中image
 @param backImage 背景Image

 @return <#return value description#>
 */
+(UIImage *)addQRCodeImageTobackImage:(UIImage *)image withBackImage:(UIImage *)backImage;
@end
