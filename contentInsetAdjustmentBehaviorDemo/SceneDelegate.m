//
//  SceneDelegate.m
//  contentInsetAdjustmentBehaviorDemo
//
//  Created by 陈楚涛 on 2021/1/4.
//

#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
   
    NSLog(@"场景加载完成");
    if (scene) {
        UIWindowScene *windowScene = (UIWindowScene *)scene;
        self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
        self.window.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        ViewController *viewController = [[ViewController alloc] init];
        UINavigationController *naviVC = [[UINavigationController alloc] initWithRootViewController: viewController];
        self.window.rootViewController = naviVC;
        [self.window makeKeyAndVisible];
   }
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    NSLog(@"场景已经断开连接");
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    NSLog(@"已经从后台进入前台");
}


- (void)sceneWillResignActive:(UIScene *)scene {
    NSLog(@"即将从前台进入后台");
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    NSLog(@"即将从后台进入前台");
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    NSLog(@"已经从前台进入后台");
}


@end
