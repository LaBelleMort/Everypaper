//
//  UILabel+EPUILabel.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/11.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "UILabel+EPUILabel.h"

@implementation UILabel (EPUILabel)

+ (UILabel *)ep_labelwithKindFontSize:(UIFont *)font Color:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment {
    UILabel *label = [[UILabel alloc] init];
    label.font = font;
    label.textColor = color;
    label.textAlignment = textAlignment;
    label.numberOfLines = 0;
    
    return label;
}

@end
