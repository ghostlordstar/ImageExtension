//
//  UIImage+Superimposed.h
//  ImageExtension
//
//  Created by 幽雅的暴君 on 2019/1/17.
//  Copyright © 2019 ghostlord. All rights reserved.
//

/* 图片叠加分类 */

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Superimposed)

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
- (UIImage *)gl_superimpositionImage:(UIImage * _Nonnull)image superpositionRect:(CGRect)rect imageInsets:(UIEdgeInsets)insets blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;

@end
NS_ASSUME_NONNULL_END
