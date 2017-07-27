//
//  OneSingCell.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/7/12.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "OneSingCell.h"

@interface OneSingCell ()

@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UILabel *authorLabel;
@property(nonatomic, strong) UIImageView *pictureView;
@property(nonatomic, strong) UIImageView *posterView;
@property(nonatomic, strong) UIButton *startButton;
@property(nonatomic, strong) UIView *musicView;
@property(nonatomic, strong) UILabel *sessionLabel;
@end

@implementation OneSingCell

static BOOL flag = YES;

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *identifier = @"status_sing";
    OneSingCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[OneSingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

// 构造方法(在初始化对象的时候会调用)
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _titleLabel = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(18) Color:kEPColorDefaultGreyColor textAlignment:NSTextAlignmentLeft];
        NSString *string1 = @"为什么我们不能见上一面呢？我怕我们一言不合就谈恋爱";
        NSMutableAttributedString *attributedString1 = [[NSMutableAttributedString alloc] initWithString:string1];
        NSMutableParagraphStyle *pargraphStyle1 = [[NSMutableParagraphStyle alloc] init];
        [pargraphStyle1 setLineSpacing:5];
        [pargraphStyle1 setAlignment:NSTextAlignmentLeft];
        [attributedString1 addAttribute:NSParagraphStyleAttributeName value:pargraphStyle1 range:NSMakeRange(0, [attributedString1 length])];
        [_titleLabel setAttributedText:attributedString1];
        [self.contentView addSubview:_titleLabel];
        
        _authorLabel = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(10) Color:[UIColor grayColor] textAlignment:NSTextAlignmentLeft];
        [self.contentView addSubview:_authorLabel];
        
        _musicView = [[UIView alloc] init];
        _musicView.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:_musicView];
        
        _posterView = [[UIImageView alloc] init];
        _posterView.layer.masksToBounds = YES;
        _posterView.layer.cornerRadius = kScreenRatio * 80;
        [_musicView addSubview:_posterView];
        
        _startButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_startButton setBackgroundImage:[UIImage imageNamed:@"big_play_button"] forState:UIControlStateNormal];
        [_musicView addSubview:_startButton];
        _startButton.backgroundColor = [UIColor clearColor];
        [_startButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        
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
    }];
    
    
    [_authorLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_titleLabel.mas_bottom).with.offset(kScreenRatio * 5);
        make.left.mas_equalTo(kScreenRatio * 20);
        make.right.mas_equalTo(- kScreenRatio * 20);
        make.height.mas_equalTo(kScreenRatio * 20);
    }];
    
    [_musicView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_authorLabel.mas_bottom).with.offset(kScreenRatio * 5);
        make.left.mas_equalTo(kScreenRatio * 20);
        make.right.mas_equalTo(- kScreenRatio * 20);
        make.height.mas_equalTo(kScreenRatio * 160);

    }];
    
    [_posterView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_musicView.mas_top);
        make.center.mas_equalTo(_musicView.center);
        make.height.mas_equalTo(kScreenRatio * 160);
        make.width.mas_equalTo(kScreenRatio * 160);
    }];
    
    [_startButton mas_makeConstraints:^(MASConstraintMaker *make){
        make.center.mas_equalTo(_posterView.center);
        make.height.mas_equalTo(kScreenRatio * 40);
        make.width.mas_equalTo(kScreenRatio * 40);
    }];
    
    [_sessionLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_musicView.mas_bottom).with.offset(20);
        make.left.mas_equalTo(kScreenRatio * 20);
        make.right.mas_equalTo(- kScreenRatio * 20);
    }];
}

- (void)setData {
//    _titleLabel.text = @"";
    _posterView.image = [UIImage imageNamed:@"3.jpg"];
    _authorLabel.text = @"文 / 月亮石";
    //    _sessionLabel.text = @"到了三十岁无法结婚就是loser。可是三十岁还做不到就算loser的事，比起结婚来，不是还有很多吗？";
}

// 让 UIImageView 旋转
- (void)click:(id)sender {
    if (flag == YES) {
        [_startButton setBackgroundImage:[UIImage imageNamed:@"big_pause_button"] forState:UIControlStateNormal];
        flag = NO;
        [self startAnimation:8.0 count:100];
    }else {
        [_startButton setBackgroundImage:[UIImage imageNamed:@"big_play_button"] forState:UIControlStateNormal];
        [self startAnimation:0.01 count:0];
        flag = YES;
    }
   
}
- (void)startAnimation:(double)time count:(double)count {
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    rotationAnimation.duration = time;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = count;
    [_posterView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];//开始动画
    
}

@end
