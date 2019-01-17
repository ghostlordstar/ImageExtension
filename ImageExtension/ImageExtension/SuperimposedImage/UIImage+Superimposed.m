//
//  UIImage+Superimposed.m
//  ImageExtension
//
//  Created by 幽雅的暴君 on 2019/1/17.
//  Copyright © 2019 ghostlord. All rights reserved.
//

#import "UIImage+Superimposed.h"

@implementation UIImage (Superimposed)

/**
 图片叠加
 
 |————————————————————|
 |                    |
 |  图片一  (self)     |
 |                    |
 |  |—————————————|   |
 |  | 图片二       |   |
 |  |—————————————|   |
 |____________________|
 
 ⚠️处理后的图片不会超出底图(self)的大小
 
 @param image 需要叠加的图片
 @param rect 添加图片的位置和尺寸
 @param insets 内边距 默认{0,0,0,0}
 @param blendMode 混合模式,默认为正常 kCGBlendModeNormal
 @param alpha 透明度
 @return 叠加后的图片
 */
- (UIImage *)gl_superimpositionImage:(UIImage * _Nonnull)image superpositionRect:(CGRect)rect imageInsets:(UIEdgeInsets)insets blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha {
    
    UIImage *resultImage = self;
    
    if (self && !CGSizeEqualToSize(self.size, CGSizeZero)) {
        
        CGRect needDrawRect = [self p_getResultRectWithSuperpositionRect:rect insets:insets];
        
        UIGraphicsBeginImageContextWithOptions(self.size, NO, [UIScreen mainScreen].scale);
        
        [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
        
        [image drawInRect:needDrawRect blendMode:blendMode alpha:alpha];
        
        resultImage = UIGraphicsGetImageFromCurrentImageContext();

    }

    return resultImage;
}


/**
 根据叠加区域和内边距计算最终的绘制区域

 @param rect 叠加区域
 @param insets 内边距
 @return 最终的绘制区域
 */
- (CGRect)p_getResultRectWithSuperpositionRect:(CGRect)rect insets:(UIEdgeInsets)insets {
    
    CGRect resultRect = rect;
    
    resultRect.origin.x += insets.left;
    resultRect.origin.y += insets.top;
    resultRect.size.width -= (insets.left + insets.right);
    resultRect.size.height -= (insets.top + insets.bottom);

    return rect;
}

@end
