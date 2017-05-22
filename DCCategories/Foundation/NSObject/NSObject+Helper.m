//
//  NSObject+Helper.m
//  DCCategories
//
//  Created by quanzhizu on 2017/5/22.
//  Copyright © 2017年 quanzhizud2c. All rights reserved.
//

#import "NSObject+Helper.h"

@implementation NSObject (Helper)


+(BOOL)notNull:(id)object{
    
    if (object != nil && (![object isKindOfClass:[NSNull class]]) && object != NULL) {
        return YES;
    }
    return NO;
    
}

+(BOOL)isNull:(id)object{
    if (object == nil || object == NULL || [object isKindOfClass:[NSNull class]] || object == Nil) {
        return  YES;
    }
    return NO;
}

@end
