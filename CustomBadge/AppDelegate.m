//
//  AppDelegate.m
//  CustomBadge
//
//  Created by ZhuGuangwen on 15/9/21.
//  Copyright © 2015年 wepie. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "UITabBar+CustomBadge.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UITabBarController *tabController = [UITabBarController new];
    ViewController *controller1 = [[ViewController alloc] initWithText:@"haha"];
    ViewController *controller2 = [[ViewController alloc] initWithText:@"hehe"];
    tabController.viewControllers = @[ controller1, controller2 ];
    
    UITabBarItem *item0 = tabController.tabBar.items[0];
    item0.title = @"haha";
    item0.image = [UIImage imageNamed:@"icon_info"];
    
    UITabBarItem *item1 = tabController.tabBar.items[1];
    item1.title = @"hehe";
    item1.image = [UIImage imageNamed:@"icon_news"];
    
    //通过这两个参数来调整badge位置
    [tabController.tabBar setTabIconWidth:29];
    [tabController.tabBar setBadgeTop:9];
    
    self.window.rootViewController = tabController;
    [self.window makeKeyAndVisible];
    
    return YES;
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
