//
//  OneTextCell.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/7/12.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "OneTextCell.h"

@interface OneTextCell ()

@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UILabel *authorLabel;
@property(nonatomic, strong) UIImageView *pictureView;
@property(nonatomic, strong) UILabel *sessionLabel;

@end

@implementation OneTextCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *identifier = @"status_text";
    OneTextCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[OneTextCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

// 构造方法(在初始化对象的时候会调用)
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _titleLabel = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(18) Color:kEPColorDefaultGreyColor textAlignment:NSTextAlignmentLeft];
        [self.contentView addSubview:_titleLabel];
        
        _authorLabel = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(10) Color:[UIColor grayColor] textAlignment:NSTextAlignmentLeft];
        [self.contentView addSubview:_authorLabel];
        
        _pictureView = [[UIImageView alloc] init];
        _pictureView.contentMode = UIViewContentModeScaleToFill;
        [self.contentView addSubview:_pictureView];
        
        _sessionLabel = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(12) Color:kEPColorDefaultGreyColor textAlignment:NSTextAlignmentLeft];
        
        NSString *string = @"到了三十岁无法结婚就是loser。可是三十岁还做不到就算loser的事，比起结婚来，不是还有很多吗？";
        // 根据 string 对象创建 NSMutableAttributedString
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        
        //设置段落间的大小
        NSMutableParagraphStyle *pargraphStyle = [[NSMutableParagraphStyle alloc] init];
        [pargraphStyle setLineSpacing:8];
        [pargraphStyle setAlignment:NSTextAlignmentLeft];
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
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top .equalTo(self.contentView.mas_top).with.offset(5);
        make.left.mas_equalTo(kScreenRatio * 20);
        make.right.mas_equalTo(- kScreenRatio * 20);
        make.height.mas_equalTo(kScreenRatio * 30);
    }];
    
    [_authorLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_titleLabel.mas_bottom).with.offset(kScreenRatio * 5);
        make.left.mas_equalTo(kScreenRatio * 20);
        make.right.mas_equalTo(- kScreenRatio * 20);
        make.height.mas_equalTo(kScreenRatio * 20);
    }];
    
    [_pictureView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_authorLabel.mas_bottom).with.offset(5);
        make.left.mas_equalTo(kScreenRatio * 20);
        make.right.mas_equalTo(- kScreenRatio * 20);
        make.height.mas_equalTo(kScreenRatio * 180);
    }];

    [_sessionLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_pictureView.mas_bottom).with.offset(10);
        make.left.mas_equalTo(kScreenRatio * 20);
        make.right.mas_equalTo(- kScreenRatio * 20);
    }];
    
}

- (void)setData {
    _titleLabel.text = @"败犬革命";
    _pictureView.image = [UIImage imageNamed:@"bbb.jpg"];
    _authorLabel.text = @"文 / 天宫雁";
//    _sessionLabel.text = @"到了三十岁无法结婚就是loser。可是三十岁还做不到就算loser的事，比起结婚来，不是还有很多吗？";
}

@end
