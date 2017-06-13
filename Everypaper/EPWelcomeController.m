//
//  EPWelcomeController.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/11.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPWelcomeController.h"

@interface EPWelcomeController ()

//第一页元素
@property (nonatomic, strong) UILabel *page1HeaderLabel;
@property (nonatomic, strong) UILabel *page1SessionLabel;
@property (nonatomic, strong) UIImageView *page1ImageView;
@property (nonatomic, strong) EPCircleVIew *circleView;

//第二页元素
@property (nonatomic, strong) UILabel *page2HeaderLabel;
@property (nonatomic, strong) UILabel *page2SessionLabel;
@property (nonatomic, strong) UIImageView *page2TabelView;
@property (nonatomic, strong) UIImageView *page2LampView;
@property (nonatomic, strong) UIImageView *page2TableStuffView;

//第三页元素
@property (nonatomic, strong) UILabel *page3HeaderLabel;
@property (nonatomic, strong) UILabel *page3SessionLabel;
@property (nonatomic, strong) UIImageView *page3UserView;
@property (nonatomic, strong) UIImageView *page3RaysView;
@property (nonatomic, strong) UIImageView *page3BulbView;

//第四页元素
@property (nonatomic, strong) UILabel *page4HeaderLabel;
@property (nonatomic, strong) UILabel *page4SessionLabel;
@property (nonatomic, strong) UIImageView *page4ImageView;
@property (nonatomic, strong) UIView *page4BackView;

//第五页元素
@property (nonatomic, strong) UILabel *page5HeaderLabel;
@property (nonatomic, strong) UILabel *page5SessionLabel;
@property (nonatomic, strong) UIImageView *page5ImageView;

//公用元素
@property (nonatomic, strong) UIPageControl *pageControl;
@property (nonatomic, strong) UIButton *startButton;

@end

@implementation EPWelcomeController

- (NSUInteger)numberOfPages{
    return 5;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
    //加载所有动画
    [self configureAnimations];
    
}

#pragma mark - 懒加载

// 第一页元素
- (UILabel *)page1HeaderLabel {
    if (_page1HeaderLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultSecondaryBoldFont Color:kEPColorDefaultPrimaryTextBlackColor textAlignment:NSTextAlignmentCenter];
        label.text = @"\"10000 Hours\" Theory?";
        _page1HeaderLabel = label;
    }
    return _page1HeaderLabel;
}

- (UILabel *)page1SessionLabel {
    if (_page1SessionLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(14) Color:kEPColorDefaultPrimaryTextBlackColor textAlignment:NSTextAlignmentCenter];
        NSString *string = @"Malcolm T.Gladwell, author of 《Outliers》,  mentions the 10,000-hour rule. He states that it\'s \"an extraordinarily consistent answer in an incredible number of fields ... you need to have practiced, to have apprenticed, for 10,000 hours before you get good.\"";
        // 根据 string 对象创建 NSMutableAttributedString
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        
        //设置段落间的大小
        NSMutableParagraphStyle *pargraphStyle = [[NSMutableParagraphStyle alloc] init];
        [pargraphStyle setLineSpacing:6];
        [pargraphStyle setAlignment:NSTextAlignmentCenter];
        //对attributedString对象设置间距属性
        [attributedString addAttribute:NSParagraphStyleAttributeName value:pargraphStyle range:NSMakeRange(0, [attributedString length])];
        [label setAttributedText:attributedString];
        _page1SessionLabel = label;
    }
    return _page1SessionLabel;
}

- (UIImageView *)page1imageView {
    if (_page1ImageView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.image = [UIImage imageNamed:@"book"];
        _page1ImageView = imageView;
    }
    return _page1ImageView;
}

- (EPCircleVIew *)circleView {
    if (_circleView == nil) {
        EPCircleVIew *circleView = [[EPCircleVIew alloc] init];
        _circleView = circleView;
    }
    return _circleView;
}

// 第二页
- (UILabel *)page2HeaderLabel {
    if (_page2HeaderLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultSecondaryBoldFont Color:kEPColorDefaultPrimaryTextBlackColor textAlignment:NSTextAlignmentCenter];
        label.text = @"A Question?";
        _page2HeaderLabel = label;
    }
    return _page2HeaderLabel;
}

- (UILabel *)page2SessionLabel {
    if (_page2SessionLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(14) Color:kEPColorDefaultPrimaryTextBlackColor textAlignment:NSTextAlignmentCenter];
        NSString *string = @"If a person would like to be an expert in one field, based on that theory, he needs to work for 10000 hours. That means he would be the expert after almost 10 years with a frequency of 8 hours a day and 5 workdays a week.";
        // 根据 string 对象创建 NSMutableAttributedString
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        
        //设置段落间的大小
        NSMutableParagraphStyle *pargraphStyle = [[NSMutableParagraphStyle alloc] init];
        [pargraphStyle setLineSpacing:6];
        [pargraphStyle setAlignment:NSTextAlignmentCenter];
        //对attributedString对象设置间距属性
        [attributedString addAttribute:NSParagraphStyleAttributeName value:pargraphStyle range:NSMakeRange(0, [attributedString length])];
        [label setAttributedText:attributedString];
        _page2SessionLabel = label;
    }
    return _page2SessionLabel;
}
- (UIImageView *)page2TabelView {
    if (_page2TabelView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"Table"];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        _page2TabelView = imageView;
    }
    return _page2TabelView;
}

- (UIImageView *)page2TableStuffView {
    if (_page2TableStuffView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"TableStuff"];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        _page2TableStuffView = imageView;
    }
    return _page2TableStuffView;
}

- (UIImageView *)page2LampView {
    if (_page2LampView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"Lamp"];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        _page2LampView = imageView;
    }
    return _page2LampView;
}

// 第三页
- (UILabel *)page3HeaderLabel {
    if (_page3HeaderLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultSecondaryBoldFont Color:kEPColorDefaultPrimaryTextBlackColor textAlignment:NSTextAlignmentCenter];
        label.text = @"The conclusion is:";
        _page3HeaderLabel = label;
    }
    return _page3HeaderLabel;
}

- (UILabel *)page3SessionLabel {
    if (_page3SessionLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(14) Color:kEPColorDefaultPrimaryTextBlackColor textAlignment:NSTextAlignmentCenter];
        NSString *string = @"If a person would like to be an expert in one field, based on that theory, he needs to work for 10000 hours. That means he would be the expert after almost 10 years with a frequency of 8 hours a day and 5 workdays a week.";
        // 根据 string 对象创建 NSMutableAttributedString
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        
        //设置段落间的大小
        NSMutableParagraphStyle *pargraphStyle = [[NSMutableParagraphStyle alloc] init];
        [pargraphStyle setLineSpacing:6];
        [pargraphStyle setAlignment:NSTextAlignmentCenter];
        //对attributedString对象设置间距属性
        [attributedString addAttribute:NSParagraphStyleAttributeName value:pargraphStyle range:NSMakeRange(0, [attributedString length])];
        [label setAttributedText:attributedString];
        
        _page3SessionLabel = label;
    }
    return _page3SessionLabel;
}
- (UIImageView *)page3RaysView {
    if (_page3RaysView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"Rays"];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        _page3RaysView = imageView;
    }
    return _page3RaysView;
}

- (UIImageView *)page3BulbView {
    if (_page3BulbView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"Bulb"];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        _page3BulbView = imageView;
    }
    return _page3BulbView;
}

- (UIImageView *)page3UserView {
    if (_page3UserView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"User"];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        _page3UserView = imageView;
    }
    return _page3UserView;
}
//第四页
- (UILabel *)page4HeaderLabel {
    if (_page4HeaderLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultSecondaryBoldFont Color:kEPColorDefaultPrimaryTextBlackColor textAlignment:NSTextAlignmentCenter];
        label.text = @"Your Way To Mastery!";
        _page4HeaderLabel = label;
    }
    return _page4HeaderLabel;
}

- (UILabel *)page4SessionLabel {
    if (_page4SessionLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(14) Color:kEPColorDefaultPrimaryTextBlackColor textAlignment:NSTextAlignmentCenter];
        NSString *string = @"During our growing up, we almost have our own dreams, which may be a football master on the pitch, a chef cooking delicacies, of a creater desinging artworks, even a programmer well known in the world.";
        // 根据 string 对象创建 NSMutableAttributedString
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        
        //设置段落间的大小
        NSMutableParagraphStyle *pargraphStyle = [[NSMutableParagraphStyle alloc] init];
        [pargraphStyle setLineSpacing:6];
        [pargraphStyle setAlignment:NSTextAlignmentCenter];
        //对attributedString对象设置间距属性
        [attributedString addAttribute:NSParagraphStyleAttributeName value:pargraphStyle range:NSMakeRange(0, [attributedString length])];
        [label setAttributedText:attributedString];
        
        _page4SessionLabel = label;
    }
    return _page4SessionLabel;
}
- (UIImageView *)page4ImageView {
    if (_page4ImageView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"Master"];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        _page4ImageView = imageView;
    }
    return _page4ImageView;
}

- (UIView *)page4BackView {
    if (_page4BackView == nil) {
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = kEPColorDefaultYellowColor;
        _page4BackView = view;
    }
    return _page4BackView;
}
//第五页
- (UILabel *)page5HeaderLabel{
    if (_page5HeaderLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultSecondaryBoldFont Color:kEPColorDefaultPrimaryTextWhiteColor textAlignment:NSTextAlignmentCenter];
        label.text = @"Here is \"Everypaper\"";
        _page5HeaderLabel = label;
    }
    return _page5HeaderLabel;
}

- (UILabel *)page5SessionLabel{
    if (_page5SessionLabel == nil) {
        UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultFontRegularWith(14) Color:kEPColorDefaultPrimaryTextWhiteColor textAlignment:NSTextAlignmentCenter];
        NSString *string = @"Everypaper is an unique App, It can record your own 4 dreams, and the process of fullfilling them. Now, give Four a try to record you each 10000 hours!.";
        // 根据 string 对象创建 NSMutableAttributedString
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        
        //设置段落间的大小
        NSMutableParagraphStyle *pargraphStyle = [[NSMutableParagraphStyle alloc] init];
        [pargraphStyle setLineSpacing:6];
        [pargraphStyle setAlignment:NSTextAlignmentCenter];
        //对attributedString对象设置间距属性
        [attributedString addAttribute:NSParagraphStyleAttributeName value:pargraphStyle range:NSMakeRange(0, [attributedString length])];
        [label setAttributedText:attributedString];
        
        _page5SessionLabel = label;

    }
    return _page5SessionLabel;
}

//- (UIImageView *)page5ImageView{
//    if (_page5ImageView == nil) {
//        UIImageView *imageView = [[UIImageView alloc] init];
//        imageView.image = [UIImage imageNamed:@"mainIcon"];
//        imageView.contentMode = UIViewContentModeScaleAspectFit;
//        _page5ImageView = imageView;
//    }
//    return _page5ImageView;
//}

//公有元素
- (UIPageControl *)pageControl {
    if (_pageControl == nil) {
        UIPageControl *pageControl = [[UIPageControl alloc] init];
        pageControl.numberOfPages = 5;
        pageControl.currentPage = 0;
        pageControl.currentPageIndicatorTintColor = kEPColorDefaultPrimaryTextBlackColor;
        pageControl.pageIndicatorTintColor = kEPColorDefaultSecondaryTextWhiteColor;
        _pageControl = pageControl;
    }
    return _pageControl;
}
- (UIButton *)startButton{
    if(_startButton == nil){
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.titleLabel.font = [UIFont fontWithName:@"Lato-Bold" size:28];
        button.layer.cornerRadius = 5.0f;
        [button setTitle:@"Start Using Four Now" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor colorWithRed:1  green:1  blue:1 alpha:1] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor colorWithRed:0  green:0.588  blue:0.533 alpha:1]];
        [button addTarget:self action:@selector(changeRootViewController) forControlEvents:UIControlEventTouchUpInside];
        _startButton = button;
    }
    return _startButton;
}


#pragma mark - 设置视图和动画
- (void)configureViews {
    //页面一
    [self.contentView addSubview:self.page1HeaderLabel];
    [self.contentView addSubview:self.page1SessionLabel];
    [self.contentView addSubview:self.circleView];
    [self.contentView addSubview:self.page1imageView];
    //页面二
    [self.contentView addSubview:self.page2HeaderLabel];
    [self.contentView addSubview:self.page2SessionLabel];
    [self.contentView addSubview:self.page2TabelView];
    [self.contentView addSubview:self.page2TableStuffView];
    [self.contentView addSubview:self.page2LampView];
    //页面三
    [self.contentView addSubview:self.page3HeaderLabel];
    [self.contentView addSubview:self.page3SessionLabel];
    [self.contentView addSubview:self.page3RaysView];
    [self.contentView addSubview:self.page3BulbView];
    [self.contentView addSubview:self.page3UserView];
    //页面四
    [self.contentView addSubview:self.page4BackView];
    [self.contentView addSubview:self.page4HeaderLabel];
    [self.contentView addSubview:self.page4SessionLabel];
    [self.contentView addSubview:self.page4ImageView];
    //页面五
    [self.contentView addSubview:self.page5HeaderLabel];
    [self.contentView addSubview:self.page5SessionLabel];
    //[self.contentView addSubview:self.page5ImageView];
    //公有元素
    [self.contentView addSubview:self.pageControl];
    [self.contentView addSubview:self.startButton];
}

- (void)configureAnimations {
    //设置背景
    [self configureScrollViewAnimationd];
    //设置每一页的动画
    [self configurePage1Animation];
    [self configurePage2Animation];
    [self configurePage3Animation];
    [self configurePage4Animation];
    [self configurePage5Animation];
    
    [self configureCommonUIAnimation];
    
}

- (void)configureScrollViewAnimationd {
    //设置背景颜色
    IFTTTBackgroundColorAnimation *backgroundColorAnimation = [IFTTTBackgroundColorAnimation animationWithView:self.scrollView];
    [backgroundColorAnimation addKeyframeForTime:0 color:kEPColorDefaultGreenColor];
    [backgroundColorAnimation addKeyframeForTime:2 color:kEPColorDefaultBlueColor];
    [backgroundColorAnimation addKeyframeForTime:2.99 color:kEPColorDefaultBlueColor];
    [backgroundColorAnimation addKeyframeForTime:3.0 color:kEPColorDefaultBackgroundBlackColor];
    [self.animator addAnimation:backgroundColorAnimation];
}

- (void)configurePage1Animation {
    [self.page1HeaderLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.contentView.mas_top).offset(40 * kScreenRatio);
    }];
    [self keepView:self.page1HeaderLabel onPages:@[@(0),@(1)]];
    
    [self.page1SessionLabel  mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.page1HeaderLabel.mas_bottom).offset(20);
        make.width.equalTo(@(kScreenWidht - 60));
        make.height.equalTo(@(150 * kScreenRatio));
    }];
    [self keepView:self.page1SessionLabel onPages:@[@(0),@(1)]];
    
    [self.page1ImageView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.page1SessionLabel.mas_bottom).offset(100 * kScreenRatio);
        make.width.equalTo(@(180 * kScreenRatio));
        make.height.mas_equalTo(@(180 * kScreenRatio));
    }];
    [self keepView:self.page1ImageView onPages:@[@(0),@(1)]];
    
    [self.circleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(280 * kScreenRatio));
        make.height.equalTo(@(280 * kScreenRatio));
        make.centerY.equalTo(self.page1ImageView.mas_centerY);
    }];
    [self keepView:self.circleView onPages:@[@(0),@(1)]];
    
    /*
     *动画部分
     */
    // 用于放大 circleView
    IFTTTScaleAnimation *circleViewScale = [IFTTTScaleAnimation animationWithView:self.circleView];
    [self.animator addAnimation:circleViewScale];
    [circleViewScale addKeyframeForTime:0 scale:1 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [circleViewScale addKeyframeForTime:1 scale:5];
    [circleViewScale addKeyframeForTime:2 scale:1 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    
    //用于 circleView 的背景颜色变化
    IFTTTBackgroundColorAnimation *circleViewBackColor = [IFTTTBackgroundColorAnimation animationWithView:self.circleView];
    [self.animator addAnimation:circleViewBackColor];
    [circleViewBackColor addKeyframeForTime:0 color:kEPColorDefaultRedColor];
    [circleViewBackColor addKeyframeForTime:1 color:kEPColorDefaultRedColor];
    
    //用于将label和imageView在页面中的淡出
    IFTTTAlphaAnimation * page1HeaderLabelAlpha = [IFTTTAlphaAnimation animationWithView:self.page1HeaderLabel];
    [self.animator addAnimation:page1HeaderLabelAlpha];
    [page1HeaderLabelAlpha addKeyframeForTime:0 alpha:1];
    [page1HeaderLabelAlpha addKeyframeForTime:1 alpha:0];
    
    IFTTTAlphaAnimation *page1SessionLabelAlpha = [IFTTTAlphaAnimation animationWithView:self.page1SessionLabel];
    [self.animator addAnimation:page1SessionLabelAlpha];
    [page1SessionLabelAlpha addKeyframeForTime:0 alpha:1];
    [page1SessionLabelAlpha addKeyframeForTime:1 alpha:0];
    
    IFTTTAlphaAnimation *page1ImageViewAlpha = [IFTTTAlphaAnimation animationWithView:self.page1ImageView];
    [self.animator addAnimation:page1ImageViewAlpha];
    [page1ImageViewAlpha addKeyframeForTime:0 alpha:1];
    [page1ImageViewAlpha addKeyframeForTime:1 alpha:0];
    
    //用于label和imageView在页面中的移除
    IFTTTTranslationAnimation *page1HeaderLabelTrans = [IFTTTTranslationAnimation animationWithView:self.page1HeaderLabel];
    [self.animator addAnimation:page1HeaderLabelTrans];
    [page1HeaderLabelTrans addKeyframeForTime:0 translation:CGPointMake(0,0)];
    [page1HeaderLabelTrans addKeyframeForTime:1 translation:CGPointMake(0,-400)];
    
    IFTTTTranslationAnimation *page1SessionLabelTrans = [IFTTTTranslationAnimation animationWithView:self.page1SessionLabel];
    [self.animator addAnimation:page1SessionLabelTrans];
    [page1SessionLabelTrans addKeyframeForTime:0 translation:CGPointMake(0,0)];
    [page1SessionLabelTrans addKeyframeForTime:1 translation:CGPointMake(0,-400)];
    
    IFTTTTranslationAnimation *page1ImageViewTrans = [IFTTTTranslationAnimation animationWithView:self.page1ImageView];
    [self.animator addAnimation:page1ImageViewTrans];
    [page1ImageViewTrans addKeyframeForTime:0 translation:CGPointMake(0,0)];
    [page1ImageViewTrans addKeyframeForTime:1 translation:CGPointMake(0,2000)];
    
    //隐藏控件
    IFTTTHideAnimation *page1HeaderLabelHide = [IFTTTHideAnimation animationWithView:self.page1HeaderLabel hideAt:1.1];
    [self.animator addAnimation:page1HeaderLabelHide];
    
    IFTTTHideAnimation *page1SessionLabelHide = [IFTTTHideAnimation animationWithView:self.page1SessionLabel hideAt:1.1];
    [self.animator addAnimation:page1SessionLabelHide];
    
    IFTTTHideAnimation *page1ImageViewHide = [IFTTTHideAnimation animationWithView:self.page1ImageView hideAt:1.1];
    [self.animator addAnimation:page1ImageViewHide];
    
    IFTTTHideAnimation *page1CircleViewHide = [IFTTTHideAnimation animationWithView:self.circleView hideAt:2.1];
    [self.animator addAnimation:page1CircleViewHide];
}

- (void)configurePage2Animation{
    //布局控件
    [self.page2HeaderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(40 * kScreenRatio);
        
    }];
    [self keepView:self.page2HeaderLabel onPage:1];
    
    [self.page2SessionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page2HeaderLabel.mas_bottom).offset(40 * kScreenRatio);
        make.width.equalTo(@(kScreenWidht - 60));
    }];
    [self keepView:self.page2SessionLabel onPage:1];
    
    
    [self.page2TabelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page2SessionLabel.mas_bottom).offset(240 * kScreenRatio);
        make.width.equalTo(@(260 * kScreenRatio));
        make.height.equalTo(@(114 * kScreenRatio));
    }];
    [self keepView:self.page2TabelView onPages:@[@(1),@(1.5)] atTimes:@[@(1),@(2)]];
    
    [self.page2TableStuffView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page2SessionLabel.mas_bottom).offset(140 * kScreenRatio);
        make.width.equalTo(@(180 * kScreenRatio));
        make.height.equalTo(@(102 * kScreenRatio));
    }];
    [self keepView:self.page2TableStuffView onPages:@[@(1.15),@(1)] atTimes:@[@(1),@(2)]];
    
    [self.page2LampView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page2SessionLabel.mas_bottom).offset(162 * kScreenRatio);
        make.width.equalTo(@(60 * kScreenRatio));
        make.height.equalTo(@(78 * kScreenRatio));
    }];
    [self keepView:self.page2LampView onPages:@[@(0.76),@(0.5)] atTimes:@[@(1),@(2)]];
    
    //用于label和imageView的移除
    IFTTTScaleAnimation *page2HeaderLabelScale = [IFTTTScaleAnimation animationWithView:self.page2HeaderLabel];
    [self.animator addAnimation:page2HeaderLabelScale];
    [page2HeaderLabelScale addKeyframeForTime:1 scale:1 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page2HeaderLabelScale addKeyframeForTime:2 scale:0.0001];
    
    IFTTTScaleAnimation *page2ContentLabelScale = [IFTTTScaleAnimation animationWithView:self.page2SessionLabel];
    [self.animator addAnimation:page2ContentLabelScale];
    [page2ContentLabelScale addKeyframeForTime:1 scale:1 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page2ContentLabelScale addKeyframeForTime:2 scale:0.0001];
    
    //用于label和imageView的淡出
    IFTTTAlphaAnimation *page2HeaderLabelAlpha = [IFTTTAlphaAnimation animationWithView:self.page2HeaderLabel];
    [self.animator addAnimation:page2HeaderLabelAlpha];
    [page2HeaderLabelAlpha addKeyframeForTime:1 alpha:1];
    [page2HeaderLabelAlpha addKeyframeForTime:2 alpha:0];
    
    IFTTTAlphaAnimation *page2ContentLabelAlpha = [IFTTTAlphaAnimation animationWithView:self.page2SessionLabel];
    [self.animator addAnimation:page2ContentLabelAlpha];
    [page2ContentLabelAlpha addKeyframeForTime:1 alpha:1];
    [page2ContentLabelAlpha addKeyframeForTime:2 alpha:0];
    
    IFTTTAlphaAnimation *page2TabelViewAlpha = [IFTTTAlphaAnimation animationWithView:self.page2TabelView];
    [self.animator addAnimation:page2TabelViewAlpha];
    [page2TabelViewAlpha addKeyframeForTime:1 alpha:1];
    [page2TabelViewAlpha addKeyframeForTime:2 alpha:0];
    
    IFTTTAlphaAnimation *page2TableStuffViewAlpha = [IFTTTAlphaAnimation animationWithView:self.page2TableStuffView];
    [self.animator addAnimation:page2TableStuffViewAlpha];
    [page2TableStuffViewAlpha addKeyframeForTime:1 alpha:1];
    [page2TableStuffViewAlpha addKeyframeForTime:2 alpha:0];
    
    IFTTTAlphaAnimation *page2LampViewAlpha = [IFTTTAlphaAnimation animationWithView:self.page2LampView];
    [self.animator addAnimation:page2LampViewAlpha];
    [page2LampViewAlpha addKeyframeForTime:1 alpha:1];
    [page2LampViewAlpha addKeyframeForTime:2 alpha:0];
    
    //隐藏控件
    IFTTTHideAnimation *page2HeaderLabelHide = [IFTTTHideAnimation animationWithView:self.page2HeaderLabel hideAt:2.1];
    [self.animator addAnimation:page2HeaderLabelHide];
    
    IFTTTHideAnimation *page2ContentLabelHide = [IFTTTHideAnimation animationWithView:self.page2SessionLabel hideAt:2.1];
    [self.animator addAnimation:page2ContentLabelHide];
    
    IFTTTHideAnimation *page2TabelViewHide = [IFTTTHideAnimation animationWithView:self.page2TabelView hideAt:2.1];
    [self.animator addAnimation:page2TabelViewHide];
    
    IFTTTHideAnimation *page2TableStuffViewHide = [IFTTTHideAnimation animationWithView:self.page2TableStuffView hideAt:2.1];
    [self.animator addAnimation:page2TableStuffViewHide];
    
    IFTTTHideAnimation *page2LampViewHide = [IFTTTHideAnimation animationWithView:self.page2LampView hideAt:2.1];
    [self.animator addAnimation:page2LampViewHide];
}

- (void)configurePage3Animation{
    //布局控件
    [self.page3HeaderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(40 * kScreenRatio);
        
    }];
    [self keepView:self.page3HeaderLabel onPages:@[@(1),@(2),@(3)]];
    
    [self.page3SessionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page3HeaderLabel.mas_bottom).offset(40 * kScreenRatio);
        make.width.equalTo(@(kScreenWidht - 60));
    }];
    [self keepView:self.page3SessionLabel onPages:@[@(1),@(2),@(3)]];
    
    
    [self.page3RaysView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page3SessionLabel.mas_bottom).offset(115 * kScreenRatio);
        make.width.equalTo(@(100 * kScreenRatio));
        make.height.equalTo(@(78 * kScreenRatio));
    }];
    [self keepView:self.page3RaysView onPages:@[@(1),@(2),@(3)]];
    
    [self.page3BulbView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page3SessionLabel.mas_bottom).offset(150 * kScreenRatio);
        make.width.equalTo(@(30 * kScreenRatio));
        make.height.equalTo(@(41 * kScreenRatio));
    }];
    [self keepView:self.page3BulbView onPages:@[@(1),@(2),@(3)]];
    
    [self.page3UserView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page3SessionLabel.mas_bottom).offset(210 * kScreenRatio);
        make.width.equalTo(@(150 * kScreenRatio));
        make.height.equalTo(@(172 * kScreenRatio));
    }];
    [self keepView:self.page3UserView onPages:@[@(1),@(2),@(3)]];
    
    //RaysView 的闪亮动画
    IFTTTAlphaAnimation *page3RaysViewShowAlpha = [IFTTTAlphaAnimation animationWithView:self.page3RaysView];
    [self.animator addAnimation:page3RaysViewShowAlpha];
    [page3RaysViewShowAlpha addKeyframeForTime:1.99 alpha:0];
    [page3RaysViewShowAlpha addKeyframeForTime:2 alpha:1];
    [page3RaysViewShowAlpha addKeyframeForTime:2.01 alpha:0];
    
    //用于 label 和 imageView 的缩放淡入
    IFTTTScaleAnimation *page3HeaderLabelScale = [IFTTTScaleAnimation animationWithView:self.page3HeaderLabel];
    [self.animator addAnimation:page3HeaderLabelScale];
    [page3HeaderLabelScale addKeyframeForTime:1 scale:0.0001 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page3HeaderLabelScale addKeyframeForTime:1.5 scale:1.4 withEasingFunction:IFTTTEasingFunctionEaseOutQuad];
    [page3HeaderLabelScale addKeyframeForTime:2 scale:1 withEasingFunction:IFTTTEasingFunctionEaseOutQuad];
    
    IFTTTScaleAnimation *page3SessionLabelScale = [IFTTTScaleAnimation animationWithView:self.page3SessionLabel];
    [self.animator addAnimation:page3SessionLabelScale];
    [page3SessionLabelScale addKeyframeForTime:1 scale:0.0001 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page3SessionLabelScale addKeyframeForTime:1.5 scale:1.4 withEasingFunction:IFTTTEasingFunctionEaseOutQuad];
    [page3SessionLabelScale addKeyframeForTime:2 scale:1 withEasingFunction:IFTTTEasingFunctionEaseOutQuad];
    
    IFTTTScaleAnimation *page3RaysViewScale = [IFTTTScaleAnimation animationWithView:self.page3RaysView];
    [self.animator addAnimation:page3RaysViewScale];
    [page3RaysViewScale addKeyframeForTime:1 scale:0.0001 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page3RaysViewScale addKeyframeForTime:1.5 scale:1.4 withEasingFunction:IFTTTEasingFunctionEaseOutQuad];
    [page3RaysViewScale addKeyframeForTime:2 scale:1 withEasingFunction:IFTTTEasingFunctionEaseOutQuad];

    IFTTTScaleAnimation *page3UserViewScale = [IFTTTScaleAnimation animationWithView:self.page3UserView];
    [self.animator addAnimation:page3UserViewScale];
    [page3UserViewScale addKeyframeForTime:1 scale:0.0001 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page3UserViewScale addKeyframeForTime:1.5 scale:1.4 withEasingFunction:IFTTTEasingFunctionEaseOutQuad];
    [page3UserViewScale addKeyframeForTime:2 scale:1 withEasingFunction:IFTTTEasingFunctionEaseOutQuad];
    
    IFTTTScaleAnimation *page3BulbViewScale = [IFTTTScaleAnimation animationWithView:self.page3BulbView];
    [self.animator addAnimation:page3BulbViewScale];
    [page3BulbViewScale addKeyframeForTime:1 scale:0.0001 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page3BulbViewScale addKeyframeForTime:1.5 scale:1.4 withEasingFunction:IFTTTEasingFunctionEaseOutBounce];
    [page3BulbViewScale addKeyframeForTime:2 scale:1 withEasingFunction:IFTTTEasingFunctionEaseOutBounce];
    
    // 用于 imageView 和 lable 的弹出
    IFTTTTranslationAnimation *page3HeaderLabelTrans = [IFTTTTranslationAnimation animationWithView:self.page3HeaderLabel];
    [self.animator addAnimation:page3HeaderLabelTrans];
    [page3HeaderLabelTrans addKeyframeForTime:2 translation:CGPointMake(0, 0)];
    [page3HeaderLabelTrans addKeyframeForTime:3 translation:CGPointMake(0, 800)];
    
    IFTTTTranslationAnimation *page3SessionLabelTrans = [IFTTTTranslationAnimation animationWithView:self.page3SessionLabel];
    [self.animator addAnimation:page3SessionLabelTrans];
    [page3SessionLabelTrans addKeyframeForTime:2 translation:CGPointMake(0, 0)];
    [page3SessionLabelTrans addKeyframeForTime:3 translation:CGPointMake(0, 800)];
    
    IFTTTTranslationAnimation *page3RaysViewTrans = [IFTTTTranslationAnimation animationWithView:self.page3RaysView];
    [self.animator addAnimation:page3RaysViewTrans];
    [page3RaysViewTrans addKeyframeForTime:2 translation:CGPointMake(0, 0)];
    [page3RaysViewTrans addKeyframeForTime:3 translation:CGPointMake(0, 800)];
    
    IFTTTTranslationAnimation *page3UserViewTrans = [IFTTTTranslationAnimation animationWithView:self.page3UserView];
    [self.animator addAnimation:page3UserViewTrans];
    [page3UserViewTrans addKeyframeForTime:2 translation:CGPointMake(0, 0)];
    [page3UserViewTrans addKeyframeForTime:3 translation:CGPointMake(0, 800)];
    
    IFTTTTranslationAnimation *page3BulbViewTrans = [IFTTTTranslationAnimation animationWithView:self.page3BulbView];
    [self.animator addAnimation:page3BulbViewTrans];
    [page3BulbViewTrans addKeyframeForTime:2 translation:CGPointMake(0, 0)];
    [page3BulbViewTrans addKeyframeForTime:3 translation:CGPointMake(0, 800)];
    
    
    //隐藏控件
    IFTTTHideAnimation *page3HeaderLabelHide = [IFTTTHideAnimation animationWithView:self.page3HeaderLabel hideAt:3.1];
    [self.animator addAnimation:page3HeaderLabelHide];
    
    IFTTTHideAnimation *page3SessionLabelHide = [IFTTTHideAnimation animationWithView:self.page3SessionLabel hideAt:3.1];
    [self.animator addAnimation:page3SessionLabelHide];
    
    IFTTTHideAnimation *page3RaysViewHide = [IFTTTHideAnimation animationWithView:self.page3RaysView hideAt:3.1];
    [self.animator addAnimation:page3RaysViewHide];
    
    IFTTTHideAnimation *page3BulbViewHide = [IFTTTHideAnimation animationWithView:self.page3BulbView hideAt:3.1];
    [self.animator addAnimation:page3BulbViewHide];
    
    IFTTTHideAnimation *page3UserViewHide = [IFTTTHideAnimation animationWithView:self.page3UserView hideAt:3.1];
    [self.animator addAnimation:page3UserViewHide];
}
- (void)configurePage4Animation{
    //布局控件
    [self.page4HeaderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(40 * kScreenRatio);
    }];
    [self keepView:self.page4HeaderLabel onPages:@[@(2),@(3),@(4)]];
    
    [self.page4SessionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page4HeaderLabel.mas_bottom).offset(40 * kScreenRatio);
        make.width.equalTo(@(kScreenWidht - 60));
    }];
    [self keepView:self.page4SessionLabel onPages:@[@(2),@(3),@(4)]];
    
    [self.page4ImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page4SessionLabel.mas_bottom).offset(150 * kScreenRatio);
        make.width.equalTo(@(200 * kScreenRatio));
        make.height.equalTo(@(200 * kScreenRatio));
    }];
    [self keepView:self.page4ImageView onPages:@[@(2),@(3),@(4)]];
    
    [self.page4BackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(kScreenWidht));
        make.height.equalTo(@(kScreenHeight));
    }];
    [self keepView:self.page4BackView onPages:@[@(2),@(3),@(4)]];
    
    //用于label和imageView的弹出
    IFTTTTranslationAnimation *page4HeaderLabelTrans = [IFTTTTranslationAnimation animationWithView:self.page4HeaderLabel];
    [self.animator addAnimation:page4HeaderLabelTrans];
    [page4HeaderLabelTrans addKeyframeForTime:2 translation:CGPointMake(0,-800)];
    [page4HeaderLabelTrans addKeyframeForTime:3 translation:CGPointMake(0,0)];
    
    IFTTTTranslationAnimation *page4SessionLabelTrans = [IFTTTTranslationAnimation animationWithView:self.page4SessionLabel];
    [self.animator addAnimation:page4SessionLabelTrans];
    [page4SessionLabelTrans addKeyframeForTime:2 translation:CGPointMake(0,-800)];
    [page4SessionLabelTrans addKeyframeForTime:3 translation:CGPointMake(0,0)];
    
    IFTTTTranslationAnimation *page4ImageViewTrans = [IFTTTTranslationAnimation animationWithView:self.page4ImageView];
    [self.animator addAnimation:page4ImageViewTrans];
    [page4ImageViewTrans addKeyframeForTime:2 translation:CGPointMake(0,-800)];
    [page4ImageViewTrans addKeyframeForTime:3 translation:CGPointMake(0,0)];
    
    IFTTTTranslationAnimation *page4BackViewTrans = [IFTTTTranslationAnimation animationWithView:self.page4BackView];
    [self.animator addAnimation:page4BackViewTrans];
    [page4BackViewTrans addKeyframeForTime:2 translation:CGPointMake(0,-kScreenHeight)];
    [page4BackViewTrans addKeyframeForTime:3 translation:CGPointMake(0,0)];
    
    //label和imageView,backView的缩小淡出
    IFTTTScaleAnimation *page4HeaderLabelScale = [IFTTTScaleAnimation animationWithView:self.page4HeaderLabel];
    [self.animator addAnimation:page4HeaderLabelScale];
    [page4HeaderLabelScale addKeyframeForTime:3 scale:1 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page4HeaderLabelScale addKeyframeForTime:4 scale:0.001 withEasingFunction:IFTTTEasingFunctionEaseOutBounce];
    
    IFTTTScaleAnimation *page4SessionLabelScale = [IFTTTScaleAnimation animationWithView:self.page4SessionLabel];
    [self.animator addAnimation:page4SessionLabelScale];
    [page4SessionLabelScale addKeyframeForTime:3 scale:1 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page4SessionLabelScale addKeyframeForTime:4 scale:0.0001 withEasingFunction:IFTTTEasingFunctionEaseOutBounce];
    
    IFTTTScaleAnimation *page4ImageViewScale = [IFTTTScaleAnimation animationWithView:self.page4ImageView];
    [self.animator addAnimation:page4ImageViewScale];
    [page4ImageViewScale addKeyframeForTime:3 scale:1 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page4ImageViewScale addKeyframeForTime:4 scale:0.0001 withEasingFunction:IFTTTEasingFunctionEaseOutBounce];
    
    IFTTTScaleAnimation *page4BackViewScale = [IFTTTScaleAnimation animationWithView:self.page4BackView];
    [self.animator addAnimation:page4BackViewScale];
    [page4BackViewScale addKeyframeForTime:3 scale:1 withEasingFunction:IFTTTEasingFunctionEaseInQuad];
    [page4BackViewScale addKeyframeForTime:4 scale:0.0001 withEasingFunction:IFTTTEasingFunctionEaseOutBounce];
    
    //label和imageView,backView的旋转
    IFTTTRotationAnimation *page4HeaderLabelRota = [IFTTTRotationAnimation animationWithView:self.page4HeaderLabel];
    [self.animator addAnimation:page4HeaderLabelRota];
    [page4HeaderLabelRota addKeyframeForTime:3 rotation:0];
    [page4HeaderLabelRota addKeyframeForTime:4 rotation:360];
    
    IFTTTRotationAnimation *page4SessionLabelRota = [IFTTTRotationAnimation animationWithView:self.page4SessionLabel];
    [self.animator addAnimation:page4SessionLabelRota];
    [page4SessionLabelRota addKeyframeForTime:3 rotation:0];
    [page4SessionLabelRota addKeyframeForTime:4 rotation:360];
    
    IFTTTRotationAnimation *page4ImageViewRota = [IFTTTRotationAnimation animationWithView:self.page4ImageView];
    [self.animator addAnimation:page4ImageViewRota];
    [page4ImageViewRota addKeyframeForTime:3 rotation:0];
    [page4ImageViewRota addKeyframeForTime:4 rotation:360];
    
    IFTTTRotationAnimation *page4BackViewRota = [IFTTTRotationAnimation animationWithView:self.page4BackView];
    [self.animator addAnimation:page4BackViewRota];
    [page4BackViewRota addKeyframeForTime:3 rotation:0];
    [page4BackViewRota addKeyframeForTime:4 rotation:360];
    
    //label和imageView,backView的渐出效果
    //用于label和imageView的淡出
    IFTTTAlphaAnimation *page4HeaderLabelAlpha = [IFTTTAlphaAnimation animationWithView:self.page4HeaderLabel];
    [self.animator addAnimation:page4HeaderLabelAlpha];
    [page4HeaderLabelAlpha addKeyframeForTime:3 alpha:1];
    [page4HeaderLabelAlpha addKeyframeForTime:4 alpha:0];
    
    IFTTTAlphaAnimation *page4SessionLabelAlpha = [IFTTTAlphaAnimation animationWithView:self.page4SessionLabel];
    [self.animator addAnimation:page4SessionLabelAlpha];
    [page4SessionLabelAlpha addKeyframeForTime:3 alpha:1];
    [page4SessionLabelAlpha addKeyframeForTime:4 alpha:0];
    
    IFTTTAlphaAnimation *page4ImageViewAlpha = [IFTTTAlphaAnimation animationWithView:self.page4ImageView];
    [self.animator addAnimation:page4ImageViewAlpha];
    [page4ImageViewAlpha addKeyframeForTime:3 alpha:1];
    [page4ImageViewAlpha addKeyframeForTime:4 alpha:0];
    
    IFTTTAlphaAnimation *page4BackViewAlpha = [IFTTTAlphaAnimation animationWithView:self.page4BackView];
    [self.animator addAnimation:page4BackViewAlpha];
    [page4BackViewAlpha addKeyframeForTime:3 alpha:1];
    [page4BackViewAlpha addKeyframeForTime:4 alpha:0];
    
    //隐藏控件
    IFTTTHideAnimation *page4HeaderLabelHide = [IFTTTHideAnimation animationWithView:self.page4HeaderLabel hideAt:4.1];
    [self.animator addAnimation:page4HeaderLabelHide];
    
    IFTTTHideAnimation *page4SessionLabelHide = [IFTTTHideAnimation animationWithView:self.page4SessionLabel hideAt:4.1];
    [self.animator addAnimation:page4SessionLabelHide];
    
    IFTTTHideAnimation *page4ImageViewHide = [IFTTTHideAnimation animationWithView:self.page4ImageView hideAt:4.1];
    [self.animator addAnimation:page4ImageViewHide];
    
    IFTTTHideAnimation *page4BackViewHide = [IFTTTHideAnimation animationWithView:self.page4BackView hideAt:4.1];
    [self.animator addAnimation:page4BackViewHide];
    
}

- (void)configurePage5Animation{
    //布局控件
    [self.page5HeaderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(40 * kScreenRatio);
    }];
    [self keepView:self.page5HeaderLabel onPages:@[@(3),@(4)]];
    
    [self.page5SessionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.page5HeaderLabel.mas_bottom).offset(40 * kScreenRatio);
        make.width.equalTo(@(kScreenWidht - 60));
    }];
    [self keepView:self.page5SessionLabel onPages:@[@(3),@(4)]];
    
//    [self.page5ImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.page5SessionLabel.mas_bottom).offset(180 * kScreenRatio);
//        make.width.equalTo(@(100 * kScreenRatio));
//        make.height.equalTo(@(100 * kScreenRatio));
//    }];
//    [self keepView:self.page5ImageView onPages:@[@(3),@(4)]];
//    
    //用于label和imageView的弹出
    IFTTTTranslationAnimation *page5HeaderLabelTrans = [IFTTTTranslationAnimation animationWithView:self.page5HeaderLabel];
    [self.animator addAnimation:page5HeaderLabelTrans];
    [page5HeaderLabelTrans addKeyframeForTime:3 translation:CGPointMake(0,2000)];
    [page5HeaderLabelTrans addKeyframeForTime:4 translation:CGPointMake(0,0)];
    
    IFTTTTranslationAnimation *page5SessionLabelTrans = [IFTTTTranslationAnimation animationWithView:self.page5SessionLabel];
    [self.animator addAnimation:page5SessionLabelTrans];
    [page5SessionLabelTrans addKeyframeForTime:3 translation:CGPointMake(0,2000)];
    [page5SessionLabelTrans addKeyframeForTime:4 translation:CGPointMake(0,0)];
    
    IFTTTTranslationAnimation *page5ImageViewTrans = [IFTTTTranslationAnimation animationWithView:self.page5ImageView];
    [self.animator addAnimation:page5ImageViewTrans];
    [page5ImageViewTrans addKeyframeForTime:3 translation:CGPointMake(0,2000)];
    [page5ImageViewTrans addKeyframeForTime:4 translation:CGPointMake(0,0)];
    
    //旋转动画
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    rotationAnimation.duration = 10;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 1;
    [self.page5ImageView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    
}
- (void)configureCommonUIAnimation{
    //布局控件
    [self.pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-30);
        make.width.equalTo(@(150 * kScreenRatio));
        make.height.equalTo(@(50 * kScreenRatio));
    }];
    [self keepView:self.pageControl onPages:@[@(0),@(1),@(2),@(3),@(4)]];
    
    IFTTTAlphaAnimation *pageControlAlpha = [IFTTTAlphaAnimation animationWithView:self.pageControl];
    [self.animator addAnimation:pageControlAlpha];
    [pageControlAlpha addKeyframeForTime:3 alpha:1];
    [pageControlAlpha addKeyframeForTime:4 alpha:0];
    
    [self.startButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.pageControl.mas_centerY);
        make.width.equalTo(@(kScreenWidht - 30));
        make.height.equalTo(@(60 * kScreenRatio));
    }];
    [self keepView:self.startButton onPages:@[@(3),@(4)]];
    
    IFTTTAlphaAnimation *startButtonAlpha = [IFTTTAlphaAnimation animationWithView:self.startButton];
    [self.animator addAnimation:startButtonAlpha];
    [startButtonAlpha addKeyframeForTime:3 alpha:0];
    [startButtonAlpha addKeyframeForTime:4 alpha:1];
    
}

#pragma mark - UIScrollViewDelegate
/*
 *UIScrollView停止"拖拽"时候调用
 *停止拖拽并不代表停止滚动,也就是说UIScrollView的滚动是有惯性的
 *scrllViewDidEndDragging是没有办法准确监听到UIScrollView停止滚动的
 *decelerate等于YES代表有惯性, 会继续滚动; 如果等于NO代表没有惯性,会停止滚动
 */
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if (decelerate == NO) {
        [self scrollViewDidEndDecelerating:scrollView];
    }
}

/*
 * UIScrollView停止"减速"时候调用
 * scrollViewDidEndDecelerating不一定会调用,
 * 只有scrollView有惯性的时候才会调用
 */
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    int index = fabs(scrollView.contentOffset.x) / scrollView.frame.size.width;
    self.pageControl.currentPage = index;
}

#pragma mark - 发送通知
- (void)changeRootViewController {
    [UIView animateWithDuration:1.0 animations:^{
        self.view.alpha = 0.00;
        self.view.backgroundColor = kEPColorDefaultBackgroundBlackColor;
    }completion:^(BOOL finished) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"EPChangeDefaultNotification" object:nil];
    }];
}
@end
