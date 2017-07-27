//
//  EPOneDetailController.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/7/12.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPOneDetailController.h"

@interface EPOneDetailController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, assign) int silder;
@property(nonatomic, strong) UITableView *myTableView;

@end

@implementation EPOneDetailController



- (void)viewDidLoad {
    [super viewDidLoad];
    _silder = 0;
    [self myTableView];
    
}

#pragma mark -tableView 的初始化
- (UITableView *)myTableView {
    if (!_myTableView) {
        _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(kScreenRatio * 5, 0, kScreenWidht - kScreenRatio * 10, kScreenHeight) style:UITableViewStyleGrouped];
        _myTableView.backgroundColor = kEPColorDefaultWhiteColor;
        _myTableView.delegate = self;
        _myTableView.dataSource = self;
        _myTableView.separatorColor = [UIColor grayColor];
        _myTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLineEtched;
        _myTableView.rowHeight = UITableViewAutomaticDimension;
        _myTableView.sectionFooterHeight = 0;
        _myTableView.sectionHeaderHeight = 30;
        _myTableView.showsVerticalScrollIndicator = NO;
        [_myTableView registerClass:[OnePictuerCell class] forCellReuseIdentifier:@"status_picture"];
        [_myTableView registerClass:[OneTextCell class] forCellReuseIdentifier:@"status_text"];
        [_myTableView registerClass:[OneSingCell class] forCellReuseIdentifier:@"status_sing"];
        
        [_myTableView setAllowsSelection:NO];
        [self.view addSubview:_myTableView];
    }
    return _myTableView;
}
#pragma mark -UITableViewDelegate
// 自定义 section
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *sectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidht, kScreenRatio * 30)];
    [sectionView setBackgroundColor:[UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0]];
    
    UILabel *lableTitle = [[UILabel alloc] initWithFrame:CGRectMake(0 , 0, sectionView.frame.size.width, sectionView.frame.size.height)];
    [lableTitle setBackgroundColor:[UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0]];
    lableTitle.font = kEPDefaultFontBoldWith(13);
    lableTitle.textColor = kEPColorDefaultWhiteColor;
    lableTitle.textAlignment = NSTextAlignmentCenter;
    if (section == 0) {
        lableTitle.text = @"ONE.一个";
    } else if (section == 1) {
        lableTitle.text = @"—— 一个.文章 ——";
    } else if (section == 2) {
        lableTitle.text = @"—— 一个.问答 ——";
    } else if (section == 3) {
        lableTitle.text = @"—— 一个.音乐 ——";
    } else {
        lableTitle.text = @"—— 一个.影视 ——";
    }
    [sectionView addSubview:lableTitle];
    
    
    return sectionView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height = 100.f;
    if (indexPath.section == 0) {
        height = 360.0f;
    } else if (indexPath.section == 1 || indexPath.section == 2) {
        height = 280.0f;
    } else if (indexPath.section == 3 || indexPath.section == 4){
        height = 300.0f;
    }
    return height;
}

//- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 50.f;
//}

#pragma mark -UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = nil;
    if (!cell) {
        if (indexPath.section == 0) {
            cell = [OnePictuerCell cellWithTableView:tableView];
            return cell;
        } else if (indexPath.section == 1 || indexPath.section == 2) {
            cell = [OneTextCell cellWithTableView:tableView];
        } else if (indexPath.section == 3 || indexPath.section == 4) {
            cell = [OneSingCell cellWithTableView:tableView];
        }

    }
    return cell;
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    if (scrollView.contentOffset.y > 0) {
//        _silder = 1;
//    }
//    else{
//        _silder = 0;
//    
//    }
//    NSLog(@"%d",_silder);
//    [self prefersStatusBarHidden];
//}
//- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView {
//
//        _silder = 0;
//    
//}
- (BOOL)prefersStatusBarHidden{
    if (_silder == 1) {
        NSLog(@"__ 1 __");
        return NO;
    }
    return YES;

}

@end
