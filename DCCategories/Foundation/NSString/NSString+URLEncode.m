//
//  NSString+URLEncode.m
//  Categories
//
//  Created by fengjiwen on 16/9/27.
//  Copyright © 2016年 云之彼端. All rights reserved.
//

#import "NSString+URLEncode.h"

@implementation NSString (URLEncode)

- (NSString *)URLEncode {
    
    if (self && [self length]>0) {
        NSMutableString *output = [NSMutableString string];
        const unsigned char *source = (const unsigned char *)[self UTF8String];
        int sourceLen = (int)strlen((const char *)source);
        for (int i = 0; i < sourceLen; ++i) {
            const unsigned char thisChar = source[i];
            //            if (thisChar == ' '){
            //                [output appendString:@"+"];
            //            } else
            if (thisChar == '.' || thisChar == '-' || thisChar == '_' ||  thisChar == '*' ||
                (thisChar >= 'a' && thisChar <= 'z') ||
                (thisChar >= 'A' && thisChar <= 'Z') ||
                (thisChar >= '0' && thisChar <= '9')) {
                [output appendFormat:@"%c", thisChar];
            } else {
                [output appendFormat:@"%%%02X", thisChar];
            }
        }
        return output;
    }
    return self;
    //return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

- (NSString *)URLDeCode {
    
    if (self && [self length]>0) {
        NSMutableString *output = [NSMutableString string];
        const unsigned char *source = (const unsigned char *)[self UTF8String];
        int sourceLen = (int)strlen((const char *)source);
        for (int i = 0; i < sourceLen; ++i) {
            const unsigned char thisChar = source[i];
            //            if (thisChar == ' '){
            //                [output appendString:@"+"];
            //            } else
            if (thisChar == '.' || thisChar == '-' || thisChar == '_' ||  thisChar == '*' ||
                (thisChar >= 'a' && thisChar <= 'z') ||
                (thisChar >= 'A' && thisChar <= 'Z') ||
                (thisChar >= '0' && thisChar <= '9')) {
                [output appendFormat:@"%c", thisChar];
            } else {
                [output appendFormat:@"%%c", thisChar];
            }
        }
        return output;
    }
    return self;
    //return [self stringByRemovingPercentEncoding];
}

- (NSString *)URLEncodeCustom {
    return CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(nil, (__bridge CFStringRef)self, nil, (__bridge CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8));
}

- (NSString *)URLDeCodeCustom {
    NSString *decodedString=(__bridge_transfer NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL, (__bridge CFStringRef)self, CFSTR(""), kCFStringEncodingUTF8);
    return decodedString;
}



@end
