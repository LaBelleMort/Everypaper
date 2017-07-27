//
//  EPOneViewController.m
//  Everypaper
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/7/12.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "EPOneViewController.h"

@interface EPOneViewController ()<UIPageViewControllerDelegate,UIPageViewControllerDataSource>

@property(nonatomic, strong) UIPageViewController *myPageViewController;
@property(nonatomic, strong) NSArray *dataSource;
@property (strong, nonatomic) NSArray *pageContent;

@end

@implementation EPOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatContentPages];
    [self myPageViewController];
   
}


#pragma mark -- pageViewController

//初始化 UIPageViewController
- (UIPageViewController *)myPageViewController {
    if (_myPageViewController == nil) {
        NSDictionary *option = [NSDictionary dictionaryWithObject:[NSNumber numberWithInteger:10] forKey:UIPageViewControllerOptionInterPageSpacingKey];
        _myPageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:option];
        _myPageViewController.delegate = self;
        _myPageViewController.dataSource = self;
        [_myPageViewController.view setFrame:self.view.bounds];
        
        EPOneDetailController *initialViewCOntroller = [self viewControllerAtIndex:0];
        NSArray *viewControllers = [NSArray arrayWithObject:initialViewCOntroller];
        [_myPageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
        // 在页面上，显示UIPageViewController对象的View
        [self addChildViewController:_myPageViewController];
        [self.view addSubview:_myPageViewController.view];
    }
    return _myPageViewController;
}

- (void) creatContentPages {
    NSMutableArray *pageStrings = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < 7; i++){
        NSString *contentString = [[NSString alloc] initWithFormat:@"This is the page %lu of content displayed using UIPageViewController in iOS ", (unsigned long)i];
        
        [pageStrings addObject:contentString];
    }
    self.pageContent = [[NSArray alloc] initWithArray:pageStrings];
    
}

- (EPOneShowController *)viewControllerAtIndex:(NSUInteger) index {
    if (self.pageContent.count == 0 || index >= self.pageContent.count) {
        return nil;
    }
    EPOneShowController *everyDayController = [[EPOneShowController alloc] init];
    everyDayController.dataObject = _pageContent[index];
    everyDayController.number = 1767 - index;
    NSLog(@"%@",_pageContent[index]);
    return everyDayController;
}

// 根据数组元素值，得到下标值
- (NSUInteger)indexOfViewController:(EPOneDetailController *)viewController {
    return [self.pageContent indexOfObject:viewController.dataObject];
}

#pragma mark- UIPageViewControllerDataSource

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger index = [self indexOfViewController:(EPOneDetailController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    index--;
    return [self viewControllerAtIndex:index];
}
- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger index = [self indexOfViewController:(EPOneDetailController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    index++;
    if (index == self.pageContent.count) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
