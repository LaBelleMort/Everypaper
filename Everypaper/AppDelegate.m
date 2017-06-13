//
//  AppDelegate.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/6.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // 获取当前的版本，是否进入欢迎界面
//    BOOL isNewVersion = [self isNewVersion];
//    isNewVersion ?  [self showWelcomeViewController] : [self showDefaultViewController];
    [self showWelcomeViewController];
    
    //监听WelcomeViewController发出的切换根控制的通知
    [[NSNotificationCenter defaultCenter] addObserverForName:@"EPChangeDefaultNotification" object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        
        [self showDefaultViewController];
        
    }];

    return YES;
}

- (BOOL)isNewVersion {
    //获取当前 app 的版本号
    NSString *newVersion = [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"];
    //加载沙盒的版本号
    NSString *currentVersion = [[NSUserDefaults standardUserDefaults] stringForKey:@"CurrentVersion"];
    //写入新的版本号
    [[NSUserDefaults standardUserDefaults] setObject:newVersion forKey:@"CurrentVersion"];
    
    return newVersion > currentVersion;
}

- (void)showWelcomeViewController {
   // 创建欢迎界面
    EPWelcomeController *welcomeVC = [[EPWelcomeController alloc] init];
    //设置根控制器zai
    self.window.rootViewController  = welcomeVC;
}

- (void)showDefaultViewController {
    //设置主界面
    EPMainController *mainVC = [[EPMainController alloc] init];
    //设置根控制器
    self.window.rootViewController = mainVC;
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
