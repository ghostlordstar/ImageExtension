//
//  DemoController.m
//  ImageExtension
//
//  Created by 幽雅的暴君 on 2019/1/14.
//  Copyright © 2019 ghostlord. All rights reserved.
//

#import "DemoController.h"
#import "UIImage+appendingImage.h"

@interface DemoController ()

@property (weak, nonatomic) IBOutlet UIImageView *totalImgView;             // 合成后的图片视图
@property (weak, nonatomic) IBOutlet UIImageView *originImageView;          // 原始图片
@property (weak, nonatomic) IBOutlet UIImageView *appendingImageView;       // 要拼接的图片
@property (weak, nonatomic) IBOutlet UISegmentedControl *directionControl;  // 方向选择的选项卡
@property (weak, nonatomic) IBOutlet UISegmentedControl *alignmentControl;  // 对齐方式的选项卡
@end

@implementation DemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.totalImgView.layer.borderColor = [UIColor grayColor].CGColor;
    self.totalImgView.layer.borderWidth = 1.0f;
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // 默认展示
    [self p_updateImgViewWithImageAppendingDirection:0 imageAppendingAlignment:0];
}

/* 拼接方向 */
- (IBAction)p_directionValueChange:(UISegmentedControl *)sender {
    
    NSLog(@"directionChange :%ld",sender.selectedSegmentIndex);
    [self p_updateImgViewWithImageAppendingDirection:self.directionControl.selectedSegmentIndex imageAppendingAlignment:self.alignmentControl.selectedSegmentIndex];
}

/* 对齐方式 */
- (IBAction)p_alignmentValueChange:(UISegmentedControl *)sender {
    
    NSLog(@"alignmentChange :%ld",sender.selectedSegmentIndex);
    
    [self p_updateImgViewWithImageAppendingDirection:self.directionControl.selectedSegmentIndex imageAppendingAlignment:self.alignmentControl.selectedSegmentIndex];
}

/* 更新拼接结果 */
- (void)p_updateImgViewWithImageAppendingDirection:(ImageAppendingDirection)direction imageAppendingAlignment:(ImageAppendingAlignment)alignment {
    
    self.totalImgView.image = [self.originImageView.image gl_appendingImg:self.appendingImageView.image imageGap:10 appendingDirection:direction appendingAlignment:alignment];
}


@end
