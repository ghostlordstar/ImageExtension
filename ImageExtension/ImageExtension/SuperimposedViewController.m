//
//  SuperimposedViewController.m
//  ImageExtension
//
//  Created by 幽雅的暴君 on 2019/1/18.
//  Copyright © 2019 ghostlord. All rights reserved.
//

#import "SuperimposedViewController.h"
#import "UIImage+Superimposed.h"
@interface SuperimposedViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *originImageView;  // 原始图片
@property (weak, nonatomic) IBOutlet UIImageView *superimposedImageView; // 需要叠加的图片
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider; // 透明度调整
@property (weak, nonatomic) IBOutlet UIImageView *resultImageView; // 最终的图片

@end

@implementation SuperimposedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // 显示默认叠加的图片
    [self p_processImageWithAlpha:1.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* 透明度变化 */
- (IBAction)p_alphaValueChangeAction:(UISlider *)sender {
    
    [self p_processImageWithAlpha:sender.value];
    
}

- (void)p_processImageWithAlpha:(CGFloat)alpha {
    
    UIImage *resultImage = [self.originImageView.image gl_superimpositionImage:self.superimposedImageView.image superpositionRect:CGRectMake(0, 0, 100.0f, 50.0f) imageInsets:UIEdgeInsetsMake(10, 10, 10, 10) blendMode:kCGBlendModeNormal alpha:alpha];
    
    self.resultImageView.image = resultImage;
}

@end
