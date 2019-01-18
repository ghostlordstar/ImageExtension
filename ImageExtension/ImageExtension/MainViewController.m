//
//  MainViewController.m
//  ImageExtension
//
//  Created by 幽雅的暴君 on 2019/1/18.
//  Copyright © 2019 ghostlord. All rights reserved.
//

#import "MainViewController.h"
#import "DemoController.h"
#import "SuperimposedViewController.h"



@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* 拼接 */
- (IBAction)p_appendingImageBtnAction:(UIButton *)sender {
    
    DemoController *appendingImageVC = [[DemoController alloc] initWithNibName:NSStringFromClass([DemoController class]) bundle:nil];
    
    [self.navigationController pushViewController:appendingImageVC animated:YES];
}

/* 叠加*/
- (IBAction)p_superimposedImageBtnAction:(UIButton *)sender {
    SuperimposedViewController *superimposedImageVC = [[SuperimposedViewController alloc] initWithNibName:NSStringFromClass([SuperimposedViewController class]) bundle:nil];
    
    [self.navigationController pushViewController:superimposedImageVC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
