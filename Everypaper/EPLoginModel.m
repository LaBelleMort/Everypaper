//
//  EPLoginModel.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/14.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPLoginModel.h"

@implementation EPLoginModel

+ (instancetype)shareInstance {
    static EPLoginModel *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (void)loginWithAccount:(NSString *)account password:(NSString *)pwd success:(void (^)())loginSuccess failure:(void (^)())loginFailed {
    NSString *regex = @"^[0-9]{8}$";
    NSPredicate *predicater = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    
    NSString *regex1 = @"^[0-9A-Za-z_]{7,15}$";
    NSPredicate *predicater1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex1];
    
    BOOL isLegal = [predicater evaluateWithObject:account] && [predicater1 evaluateWithObject:pwd];

    if (! isLegal) {
        loginSuccess();
    }else{
        loginFailed();
    }

}

@end
