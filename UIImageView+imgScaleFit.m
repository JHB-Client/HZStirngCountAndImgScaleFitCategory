//
//  UIImageView+imgScaleFit.m
//  YTNetWorkDemo
//
//  Created by admin on 2019/11/5.
//  Copyright © 2019 admin. All rights reserved.
//

#import "UIImageView+imgScaleFit.h"
#import "Masonry.h"
@implementation UIImageView (imgScaleFit)
- (void)setImageScaleFit:(CGSize)targetSize image:(UIImage *)image {
    CGFloat targetScale = (targetSize.width * 0.1) / (targetSize.height * 0.1);
    CGFloat imgScaleWH = image.size.width / image.size.height;
    CGFloat imgScaleHW = image.size.height / image.size.width;
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.superview);
        if (imgScaleWH > targetScale) {
            make.width.mas_equalTo(targetSize.width);
            make.height.mas_equalTo(self.mas_width).multipliedBy(imgScaleHW);
        } else {
            make.height.mas_equalTo(targetSize.height);
            make.width.mas_equalTo(self.mas_height).multipliedBy(imgScaleWH);
        }
    }];
    
    self.image = image;
}
@end
