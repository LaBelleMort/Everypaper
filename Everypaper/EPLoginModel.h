//
//  EPLoginModel.h
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/14.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EPLoginModel : NSObject

+ (instancetype)shareInstance;

- (void)loginWithAccount:(NSString *)account password:(NSString *)pwd success:(void (^)())loginSuccess failure:(void (^)())loginFailed;

@end
