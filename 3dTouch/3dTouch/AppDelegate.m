//
//  AppDelegate.m
//  3dTouch
//
//  Created by huangjian on 2019/3/1.
//  Copyright © 2019年 huangjian. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self init3dTouch];
    return YES;
}
-(void)init3dTouch
{
    // 也y可以plist 加key 来实现
    
    //图片
//    UIApplicationShortcutIcon *img1=[UIApplicationShortcutIcon iconWithTemplateImageName:@"seasons_selection"];
//    UIApplicationShortcutIcon *img2=[UIApplicationShortcutIcon iconWithTemplateImageName:@"shower_selection"];
    
    NSMutableArray *arrShortcutItem = (NSMutableArray *)[UIApplication sharedApplication].shortcutItems;
    UIApplicationShortcutItem *shoreItem1 = [[UIApplicationShortcutItem alloc] initWithType:@"com.jianhuang.3dTouch.search" localizedTitle:@"四季模式" localizedSubtitle:nil icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd] userInfo:nil];
    [arrShortcutItem addObject:shoreItem1];
    
    UIApplicationShortcutItem *shoreItem2 = [[UIApplicationShortcutItem alloc] initWithType:@"com.jianhuang.3dTouch.newMsg" localizedTitle:@"淋浴模式" localizedSubtitle:@"" icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeSearch] userInfo:nil];
    [arrShortcutItem addObject:shoreItem2];
    
    [UIApplication sharedApplication].shortcutItems = arrShortcutItem;
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    
    //这里可以获的shortcutItem对象的唯一标识符
    //不管APP在后台还是进程被杀死，只要通过主屏快捷操作进来的，都会调用这个方法
    NSLog(@"name:%@\ntype:%@", shortcutItem.localizedTitle, shortcutItem.type);
    
}



@end
