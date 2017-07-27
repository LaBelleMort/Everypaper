//
//  EPOneShowController.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/7/12.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPOneShowController.h"

@interface EPOneShowController ()<UIWebViewDelegate>

@end

@implementation EPOneShowController

//使用 UIWebView 来加载网页
- (UIWebView *)myWebView {
    if (!_myWebView) {
        _myWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
        _myWebView.scalesPageToFit = YES;
        [self.view addSubview:_myWebView];
    }
    return _myWebView;
}

- (void)loadData {
    NSString *urlString = [NSString stringWithFormat:@"http://wufazhuce.com/one/%d",self.number];
    NSURL* url = [NSURL URLWithString:urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [_myWebView loadRequest:request];
}

- (void)viewDidLoad{
    [super viewDidLoad];
    [self myWebView];
    [self loadData];
    [self getData];
    
}
- (void)getData {
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"http://wufazhuce.com/one/1700" parameters:nil progress:nil success:^(NSURLSessionDataTask *_Nonnull task,id _Nullable responseObject){
        NSLog(@"%@",responseObject);
    }failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
    
}

- (void) viewWillAppear:(BOOL)paramAnimated{
    [super viewWillAppear:paramAnimated];
    //[self.myWebView loadHTMLString:_dataObject baseURL:nil];
    [self.view addSubview:self.myWebView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
