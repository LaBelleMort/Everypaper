//
//  NSString+Additions.h
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/7/27.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Additions)
+ (BOOL)isStringEmpty:(NSString *)string;
+ (NSNumber *)covertToNumber:(NSString *)numberString;
+ (NSString *)timestampString;
+ (NSString *)stringWithMD5OfFile:(NSString *) path;
- (NSString *)md5Hash;
+ (NSString *)randomStringWithLength:(int)len;
+ (NSString *)timeIntervalToMMSSFormat:(NSTimeInterval)interval;
@end
