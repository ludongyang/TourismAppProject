//
//  RootTabBarController.m
//  TourismProject
//
//  Created by 鲁东阳 on 16/1/16.
//  Copyright © 2016年 鲁东阳. All rights reserved.
//

#import "RootTabBarController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    RecommendController * recommedVC = [[RecommendController alloc] init];
    UINavigationController * recommedNC = [[UINavigationController alloc] initWithRootViewController:recommedVC];
    recommedNC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"推荐" image:[UIImage imageNamed:@"iconfont-hand"] selectedImage:[UIImage imageNamed:@""]];
    
    
    CityHunterController * cityVC = [[CityHunterController alloc] init];
    UINavigationController * cityNC = [[UINavigationController alloc] initWithRootViewController:cityVC];
    cityNC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"城市猎人" image:[UIImage imageNamed:@"iconfont-youxishoubing"] selectedImage:[UIImage imageNamed:@""]];
    
    
    FriendController * friendVC = [[FriendController alloc] init];
    UINavigationController * friendNC = [[UINavigationController alloc] initWithRootViewController:friendVC];
    friendNC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"朋友" image:[UIImage imageNamed:@"iconfont-users"] selectedImage:[UIImage imageNamed:@""]];
    
    
    UserController * userVC = [[UserController alloc] init];
    UINavigationController * userNC = [[UINavigationController alloc] initWithRootViewController:userVC];
    userNC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"iconfont-wode"] selectedImage:[UIImage imageNamed:@""]];
    
    
    
    self.viewControllers = @[recommedNC,cityNC,friendNC,userNC];
    UIButton * button = [[UIButton alloc] init];
    UIImage * addImg = [UIImage imageNamed:@"iconfont-tianjia"];
    addImg = [addImg imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    
    button.frame = CGRectMake( [UIScreen mainScreen].bounds.size.width/2-20, 0, 50, 50);
    [button setImage:addImg forState:(UIControlStateNormal)];
    
    [self.tabBar addSubview:button];
    

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
