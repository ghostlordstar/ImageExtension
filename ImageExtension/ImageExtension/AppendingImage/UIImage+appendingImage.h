//
//  UIImage+appendingImage.h
//  kkcoin
//
//  Created by 幽雅的暴君 on 2019/1/12.
//  Copyright © 2019 KKCOIN. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/* 拼接图片的位置 */
typedef enum : NSUInteger {
    ImageAppendingDirectionAbove,       // 拼接到上方
    ImageAppendingDirectionBelow,       // 拼接到下方
    ImageAppendingDirectionLeft,        // 拼接到左边
    ImageAppendingDirectionRight,       // 拼接到右边
} ImageAppendingDirection;


/* 拼接图片的对齐方式 */
typedef enum : NSUInteger {
    ImageAppendingAlignmentUp,          // 居上对齐
    ImageAppendingAlignmentDown,        // 居下对齐
    ImageAppendingAlignmentLeft,        // 居左对齐
    ImageAppendingAlignmentRight,       // 居右对齐
    ImageAppendingAlignmentCenter,      // 居中对齐
} ImageAppendingAlignment;

@interface UIImage (appendingImage)

/**
 拼接图片
 
              |————> gap
              |
    |—————————|——————————|—
    ||——————| ||——————|  |
    || 图片一|  | 图片二|  |
    ||______|  |______|  |
    |————————————————————|
 
 @param img 要拼接的图片
 @param gap 拼接图片之间的间隔
 @param appendingDirection 需要拼接到的位置
 @param appendingAlignment 拼接时的对齐方式
 @return 拼接后的图片
 */
- (UIImage * _Nullable)gl_appendingImg:(UIImage * _Nonnull)img imageGap:(CGFloat)gap appendingDirection:(ImageAppendingDirection)appendingDirection appendingAlignment:(ImageAppendingAlignment)appendingAlignment;

@end

NS_ASSUME_NONNULL_END
