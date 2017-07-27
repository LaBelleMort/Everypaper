//
//  EPLoginController.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/14.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPLoginController.h"

@interface EPLoginController ()

@end

@implementation EPLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = 
    kEPColorDefaultGreenColor;
    EPTextField *textField = [[EPTextField alloc] init];
    [self.view addSubview:textField];
    textField.frame = CGRectMake(kScreenWidht / 2  - 100, kScreenHeight / 2 - 100, 200, 50);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
