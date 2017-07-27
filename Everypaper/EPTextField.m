//
//  EPTextField.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/14.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPTextField.h"

@interface EPTextField ()

@property (nonatomic, strong) CAShapeLayer *alertLayer;

@end

@implementation EPTextField

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

#pragma mark - 创建 CAShapeLayer
- (void)createAlertLayer{
    
    _alertLayer = [CAShapeLayer layer];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, self.bounds.size.height - 1)];
    [path addLineToPoint:CGPointMake(0, self.bounds.size.height - 1)];
    [path addLineToPoint:CGPointMake(self.bounds.size.width,self.bounds.size.height - 1)];
    
    _alertLayer.path = path.CGPath;
    _alertLayer.strokeColor = [kEPColorDefaultBlackColor CGColor];
    _alertLayer.fillColor = nil;
    _alertLayer.borderWidth = 1.0f;
    _alertLayer.lineCap = kCALineCapRound;
    _alertLayer.lineJoin = kCALineJoinRound;
    _alertLayer.borderColor = [UIColor blackColor].CGColor;
    [self.layer addSublayer:_alertLayer];
    
}

#pragma mark - 初始化 textfield 的基础设置
- (void)textFieldCommonSets {
    self.backgroundColor = kEPColorDefaultBlackColor;
    self.placeholder = @"密码：";
    self.textColor = kEPColorDefaultWhiteColor;
    [self setValue:kEPColorDefaultGreenColor forKeyPath:@"_placeholderLabel.textColor"];
    [self setValue:[UIFont boldSystemFontOfSize:18] forKeyPath:@"_placeholderLabel.font"];
}
@end
