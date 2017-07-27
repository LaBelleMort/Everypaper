//
//  OnePictuerCell.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/7/12.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "OnePictuerCell.h"

@interface OnePictuerCell ()

@property(nonatomic, strong) UILabel *dateLabel;
@property(nonatomic, strong) UIImageView *pictureView;
@property(nonatomic, strong) UILabel *authorLabel;
@property(nonatomic, strong) UILabel *sessionLabel;

@end

@implementation OnePictuerCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *identifier = @"status_picture";
    OnePictuerCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[OnePictuerCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

// 构造方法(在初始化对象的时候会调用)
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _dateLabel = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(18) Color:kEPColorDefaultGreyColor textAlignment:NSTextAlignmentCenter];
        [self.contentView addSubview:_dateLabel];
        
        _pictureView = [[UIImageView alloc] init];
        _pictureView.contentMode = UIViewContentModeScaleToFill;
        [self.contentView addSubview:_pictureView];
        
        _authorLabel = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(10) Color:[UIColor grayColor] textAlignment:NSTextAlignmentCenter];
        [self.contentView addSubview:_authorLabel];
        
        _sessionLabel = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(14) Color:kEPColorDefaultGreyColor textAlignment:NSTextAlignmentCenter];
        
        NSString *string = @"我告诫自己：你的话说得太多，你听别人倾诉得太多，你喝咖啡喝得太多，你在陌生的房间里坐的时间太长，你的睡眠质量太差，你醒着的时间太长，你平庸的事想得太多，你希望过多，你安慰自己太频繁。";
        // 根据 string 对象创建 NSMutableAttributedString
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        
        //设置段落间的大小
        NSMutableParagraphStyle *pargraphStyle = [[NSMutableParagraphStyle alloc] init];
        [pargraphStyle setLineSpacing:8];
        [pargraphStyle setAlignment:NSTextAlignmentCenter];
        //对attributedString对象设置间距属性
        [attributedString addAttribute:NSParagraphStyleAttributeName value:pargraphStyle range:NSMakeRange(0, [attributedString length])];
        [_sessionLabel setAttributedText:attributedString];
        [self.contentView addSubview:_sessionLabel];
    }
    [self configureCommonUI];
    [self setData];
    return self;
}

- (void)configureCommonUI {
    [_dateLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top .equalTo(self.contentView.mas_top).with.offset(5);
        make.width.equalTo(self.contentView.mas_width);
        make.height.mas_equalTo(kScreenRatio * 40);
    }];
    
    [_pictureView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_dateLabel.mas_bottom);
        make.width.equalTo(self.contentView.mas_width);
        make.height.mas_equalTo(kScreenRatio * 200);
    }];
    
    [_authorLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_pictureView.mas_bottom).with.offset(kScreenRatio * 10);
        make.width.equalTo(self.contentView.mas_width);
        make.height.mas_equalTo(kScreenRatio * 20);
    }];
    [_sessionLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_authorLabel.mas_bottom).with.offset(10);
        make.left.mas_equalTo(kScreenRatio * 20);
        make.right.mas_equalTo(- kScreenRatio * 20);
    }];

}

- (void)setData {
    _dateLabel.text = @"2017 / 07 / 13";
    _pictureView.image = [UIImage imageNamed:@"VOL.1740.jpg"];
    _authorLabel.text = @"摄影 | Simon Abrams";
//    _sessionLabel.text = @"我告诫自己：你的话说得太多，你听别人倾诉得太多，你喝咖啡喝得太多，你在陌生的房间里坐的时间太长，你的睡眠质量太差，你醒着的时间太长，你平庸的事想得太多，你希望过多，你安慰自己太频繁。";
}

@end
