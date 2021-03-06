//
//  UIControl+Extension.m
//  Categories
//
//  Created by d2c_cyf on 16/9/27.
//  Copyright © 2016年 云之彼端. All rights reserved.
//

#import "UIControl+Extension.h"
#import <objc/runtime.h>
@implementation UIControl (Extension)

+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL sela = @selector(sendAction:to:forEvent:);
        SEL selb = @selector(uxy_sendAction:to:forEvent:);
        
        Method a = class_getInstanceMethod([self class], @selector(sendAction:to:forEvent:));
        Method b = class_getInstanceMethod([self class], @selector(uxy_sendAction:to:forEvent:));
        
        if (class_addMethod([self class], sela, b, method_getTypeEncoding(b))) {
            class_replaceMethod([self class], selb, a, method_getTypeEncoding(sela));
        }else{
            method_exchangeImplementations(a, b);
        }
        
    });
}

- (void)uxy_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    if (self.ignoreEvent.boolValue) {
        return;
    }
    
    if (self.acceptEventInterval > 0) {
        self.ignoreEvent = @(YES);
        [self performSelector:@selector(setIgnoreEvent:) withObject:@(NO) afterDelay:self.acceptEventInterval];
    }
    [self uxy_sendAction:action to:target forEvent:event];
}

#pragma mark - Get
- (NSTimeInterval)acceptEventInterval {
    return [objc_getAssociatedObject(self, @selector(acceptEventInterval)) doubleValue];
}
-(NSNumber *)ignoreEvent {
    return objc_getAssociatedObject(self, @selector(ignoreEvent));
}

#pragma mark - Set
- (void)setAcceptEventInterval:(NSTimeInterval)acceptEventInterval {
    objc_setAssociatedObject(self, @selector(acceptEventInterval), @(acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);

}
- (void)setIgnoreEvent:(NSNumber *)ignoreEvent {
    objc_setAssociatedObject(self, @selector(ignoreEvent), ignoreEvent, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
