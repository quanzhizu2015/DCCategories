//
//  NSObject+Helper.h
//  DCCategories
//
//  Created by quanzhizu on 2017/5/22.
//  Copyright © 2017年 quanzhizud2c. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Helper)

+(BOOL)notNull:(id)object;

+(BOOL)isNull:(id)object;

+(void)setObject:(id)object key:(NSString *)key;
+(id)getObjectWithKey:(NSString *)key;

@end
