//
//  EPMainController.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/10.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPMainController.h"

@interface EPMainController ()<SDCycleScrollViewDelegate>

@property(nonatomic, strong) NSArray *imageArray;
@property(nonatomic, strong) SDCycleScrollView *cycleScrollView;
@property(nonatomic, strong) NSArray *titles;

@end

@implementation EPMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"one.一个";
    self.view.backgroundColor = [UIColor whiteColor];
    [self imageArray];
    [self titles];
    [self cycleScrollView];
    
}

- (NSArray* )imageArray{
    if (!_imageArray) {
        self.imageArray = @[ @"http://image.wufazhuce.com/FvxZ3g4HVuq5dw_sOBY5oMFWIzZ1",
                             @"http://image.wufazhuce.com/Fj8EELiGk5BUXZRUN8WGrCG5ZR3K",
                             @"http://image.wufazhuce.com/FjQZxM11pn_w25OaGagu_03nX-8K",
                             @"http://image.wufazhuce.com/FlaJRUzYwqFHx0jXnOTkvteDLoEW",
                             @"http://image.wufazhuce.com/FgCB1DeuVd5DRbOqyCT_3m3q8Ofl",
                             @"http://image.wufazhuce.com/FglKNLFrf3i-8zqk5AHmSojGFhxy",
                             @"http://image.wufazhuce.com/Ft4F_zQKjKC8dIquUioaRCLyhL7e"
                             ];
    }
    return _imageArray;
}

- (NSArray *)titles {
    if (!_titles) {
        self.titles = @[@"我们没那么机灵，做自己喜欢的事儿，有意思就混口饭吃，没意思就淘汰，不就这么点事儿吗？",
                        @"越来越觉得人和人之间起码的尊重是少说“你变了”，没有什么是一成不变的，每一刻的心情都是一场难以想象的蝴蝶效应。而且说到底，或许你根本不知道你评判对象的本质究竟是如何一种存在。",
                        @"如果要享受人生，只要有勇气、想象力和一点点钱就够了。",
                        @"人表达的永远不是他所说的内容，而是渴望被理解的心情。",
                        @"人之所以为人，就是他有着令人憎恨也令人热爱、令人发笑也令人悲悯的人性。",
                        @"我告诫自己：你的话说得太多，你听别人倾诉得太多，你喝咖啡喝得太多，你在陌生的房间里坐的时间太长，你的睡眠质量太差，你醒着的时间太长，你平庸的事想得太多，你希望过多，你安慰自己太频繁。",
                        @"靠不住的南方，你以为这里没有冬天，但是你忘记自己身上就带着冬天。"];
    }
    return _titles;
}
- (SDCycleScrollView *)cycleScrollView {
    if (!_cycleScrollView) {
        SDCycleScrollView *cycleScrollView2 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, kScreenWidht, kScreenRatio*240) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
        cycleScrollView2.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
        cycleScrollView2.currentPageDotColor = [UIColor whiteColor];
        cycleScrollView2.titlesGroup = _titles;
        UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, kScreenRatio*80, kScreenRatio*10)];
        label.textColor = kEPColorDefaultWhiteColor;
        label.font = [UIFont systemFontOfSize:12];
        [cycleScrollView2 addSubview:label];
        [self.view addSubview:cycleScrollView2];
        self.cycleScrollView = cycleScrollView2;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            _cycleScrollView.imageURLStringsGroup = _imageArray;
            
        });
    }
    return _cycleScrollView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
