//
//  NSString+charCountFit.m
//  YTNetWorkDemo
//
//  Created by admin on 2019/11/5.
//  Copyright © 2019 admin. All rights reserved.
//

#import "NSString+charCountFit.h"

@implementation NSString (charCountFit)

+ (instancetype)charCountFit:(NSString *)string charCount:(NSInteger)charCount  charShowCount:(NSInteger)charShowCount suffix:(NSString *)suffix {
    if (string == nil) {
        return @"";
    }
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    if (string.length == 0) {
        return @"";
    }
    return string.length > charCount ?  [[string substringToIndex:charShowCount] stringByAppendingString:suffix] : string;
}
+ (instancetype)charCountFit:(NSString *)string charCount:(NSInteger)charCount  suffix:(NSString *)suffix {
    return [self charCountFit:string charCount:charCount charShowCount:charCount suffix:suffix];
}
+ (instancetype)charCountFit:(NSString *)string charCount:(NSInteger)charCount  charShowCount:(NSInteger)charShowCount {
    return [self charCountFit:string charCount:charCount charShowCount:charShowCount suffix:@"..."];
}
+ (instancetype)charCountFit:(NSString *)string charCount:(NSInteger)charCount {
    return [self charCountFit:string charCount:charCount charShowCount:charCount];
}
@end
