//
//  AppDelegate.m
//  UITabBarControllerIcon
//
//  Created by YouXianMing on 15/8/31.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "NSString+RenderingMode.h"
#import "UIColor+CreateImage.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window                 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self setupWithWindow:self.window];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)setupWithWindow:(UIWindow *)window {
    
    FirstViewController  *firstController  = [[FirstViewController alloc] init];
    SecondViewController *secondController = [[SecondViewController alloc] init];
    ThirdViewController  *thirdController  = [[ThirdViewController alloc] init];
    
#pragma mark - 设置tabBarItem中的图片以及标题
#if 1
    
    // 设置tabBarItem中的图片以及标题
    firstController.tabBarItem  = [[UITabBarItem alloc] initWithTitle:@"Camera"
                                                                image:[@"Camera" originalRenderImage]
                                                        selectedImage:[@"Camera_high" originalRenderImage]];
    secondController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Clock"
                                                                image:[@"Clock" originalRenderImage]
                                                        selectedImage:[@"Clock_high" originalRenderImage]];
    thirdController.tabBarItem  = [[UITabBarItem alloc] initWithTitle:@"SmartPhone"
                                                                image:[@"SmartPhone" originalRenderImage]
                                                        selectedImage:[@"SmartPhone_high" originalRenderImage]];
#else
    
    // 设置tabBarItem中的图片以及标题
    firstController.tabBarItem  = [[UITabBarItem alloc] initWithTitle:@"Camera"
                                                                image:[@"Camera" defaultRenderImage]
                                                        selectedImage:[@"Camera_high" defaultRenderImage]];
    secondController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Clock"
                                                                image:[@"Clock" defaultRenderImage]
                                                        selectedImage:[@"Clock_high" defaultRenderImage]];
    thirdController.tabBarItem  = [[UITabBarItem alloc] initWithTitle:@"SmartPhone"
                                                                image:[@"SmartPhone" defaultRenderImage]
                                                        selectedImage:[@"SmartPhone_high" defaultRenderImage]];
    
#endif
    
    
    // 设置文本样式 (UIControlStateNormal + UIControlStateSelected 都需要设置)
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor],
                                                        NSFontAttributeName            : [UIFont fontWithName:@"Avenir-BookOblique" size:8.f]}
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor redColor],
                                                        NSFontAttributeName            : [UIFont fontWithName:@"Avenir-BookOblique" size:8.f]}
                                             forState:UIControlStateSelected];
    
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers     = @[firstController, secondController, thirdController];
    
#pragma mark - 修改tabBar背景色
#if 0
    
    // 修改tabBar背景色 (没办法设置透明度, 没办法去除顶部的灰色线条)
    tabBarController.tabBar.barTintColor = [UIColor yellowColor];
    
#elif 1
    
    // 修改tabBar背景色 + 去除顶部线条
    [[UITabBar appearance] setBackgroundImage:[[[UIColor yellowColor] colorWithAlphaComponent:0.5f] imageWithFrame:CGRectMake(0, 0, 10, 10)]];
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    
#elif 0
    
    tabBarController.tabBar.barStyle = UIBarStyleDefault;
    
#else
    
#endif
    
    window.rootViewController = tabBarController;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
