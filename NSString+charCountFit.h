//
//  NSString+charCountFit.h
//  YTNetWorkDemo
//
//  Created by admin on 2019/11/5.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (charCountFit)
+ (instancetype)charCountFit:(NSString *)string charCount:(NSInteger)charCount  charShowCount:(NSInteger)charShowCount suffix:(NSString *)suffix;
+ (instancetype)charCountFit:(NSString *)string charCount:(NSInteger)charCount  suffix:(NSString *)suffix;
+ (instancetype)charCountFit:(NSString *)string charCount:(NSInteger)charCount  charShowCount:(NSInteger)charShowCount;
+ (instancetype)charCountFit:(NSString *)string charCount:(NSInteger)charCount;
@end

NS_ASSUME_NONNULL_END
