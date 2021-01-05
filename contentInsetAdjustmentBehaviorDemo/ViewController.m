//
//  ViewController.m
//  contentInsetAdjustmentBehaviorDemo
//
//  Created by 陈楚涛 on 2021/1/4.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.automaticallyAdjustsScrollViewInsets = YES;
    
    self.view.backgroundColor = [UIColor whiteColor];
    //创建一个scrollView，添加一个图片
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame: self.view.bounds];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    UIImage *testImg = [UIImage imageNamed: @"img"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage: testImg];
    [self.view addSubview: scrollView];
    
    //在x系列模拟器上运行
#if 0
    //AdjustmentNever
    //完全不考虑安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 1000;
    frame.size.height = 1000;
    imageView.frame = frame;
    
    [scrollView addSubview: imageView];
    scrollView.contentSize = imageView.frame.size;
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentNever;
    
#elif 0
    //UIScrollViewContentInsetAdjustmentAutomatic例子，横屏查看
    //对照UIScrollViewContentInsetAdjustmentScrollableAxes例1
    //就算不够高度，也会空出上下两部分的安全区域。
    CGRect frame = imageView.frame;
    frame.size.width = 390;
    frame.size.height = 588;
    imageView.frame = frame;
    
    [scrollView addSubview: imageView];
    scrollView.alwaysBounceHorizontal = YES;
    scrollView.contentSize = imageView.frame.size;
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentAutomatic;
    
#elif 0
    //UIScrollViewContentInsetAdjustmentAlways例子
    //不管内容，全部考虑安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 390;
    frame.size.height = 588;
    imageView.frame = frame;
    
    [scrollView addSubview: imageView];
    scrollView.contentSize = imageView.frame.size;
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentAlways;
    
#elif 0
    //UIScrollViewContentInsetAdjustmentScrollableAxes例1
    //如果scrollView的ContentSize很小，则不考虑安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 390;
    frame.size.height = 588;
    imageView.frame = frame;
    
    [scrollView addSubview: imageView];
    scrollView.contentSize = imageView.frame.size;
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentScrollableAxes;

#elif 0
    //UIScrollViewContentInsetAdjustmentScrollableAxes例子2，横屏查看
    //如果scrollView的ContentSize大于超出显示范围，则计算安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 390;
    frame.size.height = 588;
    imageView.frame = frame;
    
    [scrollView addSubview:imageView];
    scrollView.contentSize = CGSizeMake(1000, 1000);
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentScrollableAxes;
    
#elif 1
    //UIScrollViewContentInsetAdjustmentScrollableAxes例子3，接上例，横屏查看
    //如果alwaysBounceHorizontal = YES alwaysBounceVertical = YES，则计算安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 390;
    frame.size.height = 588;
    imageView.frame = frame;
    
    [scrollView addSubview: imageView];
    scrollView.contentSize = imageView.frame.size;
    scrollView.alwaysBounceVertical = YES;
    scrollView.alwaysBounceHorizontal = YES;
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentScrollableAxes;
#endif
    
}


@end
