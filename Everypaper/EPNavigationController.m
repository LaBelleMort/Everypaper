//
//  EPNavigationController.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/7/11.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPNavigationController.h"

@interface EPNavigationController ()

@end

@implementation EPNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setBarTintColor:kEPColorDefaultWhiteColor];
    [[UINavigationBar appearance] setTintColor:kEPColorDefaultPrimaryTextWhiteColor];
    NSDictionary *dict = @{
                           NSFontAttributeName:kEPDefaultFontRegularWith(15),
                           
                           };
    [[UINavigationBar appearance] setTitleTextAttributes:dict];
    //关闭自动下移
    self.automaticallyAdjustsScrollViewInsets = false;
    self.navigationBar.translucent = false;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
