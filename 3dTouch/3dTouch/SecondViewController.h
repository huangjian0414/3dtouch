//
//  SecondViewController.h
//  3dTouch
//
//  Created by huangjian on 2019/3/1.
//  Copyright © 2019年 huangjian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^Response)(NSInteger row);
@interface SecondViewController : UIViewController
@property (nonatomic,assign)NSInteger row;

@property (nonatomic,copy)Response response ;
@end

NS_ASSUME_NONNULL_END
