//
//  UIImageView+imgScaleFit.h
//  YTNetWorkDemo
//
//  Created by admin on 2019/11/5.
//  Copyright © 2019 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (imgScaleFit)
- (void)setImageScaleFit:(CGSize)targetSize image:(UIImage *)image;
@end

NS_ASSUME_NONNULL_END
