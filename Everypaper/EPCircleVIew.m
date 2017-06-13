//
//  EPCircleVIew.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/11.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPCircleVIew.h"

@interface EPCircleVIew()

@property (nonatomic, strong) CAShapeLayer *maskLayer;

@end

@implementation EPCircleVIew

- (void)layoutSubviews{
    [super layoutSubviews];
   
    //创建 maskLayer
    if (!self.maskLayer) {
        self.maskLayer = [CAShapeLayer layer];
        self.layer.mask = _maskLayer;
    }

    /*
     *UIBezierPath对象是CGPathRef数据类型的封装。
     *path如果是基于矢量形状的，都用直线和曲线段去创建。
     *我们使用直线段去创建矩形和多边形，使用曲线段去创建弧（arc），圆或者其他复杂的曲线形状。
     */
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:CGRectGetWidth(self.bounds) / 2.f];
    self.maskLayer.path = path.CGPath;
    self.layer.cornerRadius = CGRectGetWidth(self.layer.bounds) / 2.f;
}

@end
