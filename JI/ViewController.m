//
//  ViewController.m
//  JI
//
//  Created by crazypoo on 15/2/4.
//  Copyright (c) 2015年 crazypoo. All rights reserved.
//

#import "ViewController.h"
#import "LBGBeginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor warmGrayColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10, 65, 75, 20);
    [button setTitle:@"疯子最帅" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(gotoLBGBeginViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)gotoLBGBeginViewController
{
    NSLog(@"Debug1\n gotoLBGBeginViewController 没有最帅只有更帅");
    
    LBGBeginViewController *lbgBeginViewController = [[LBGBeginViewController alloc] init];
    lbgBeginViewController.view.backgroundColor = [UIColor redColor];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:lbgBeginViewController];
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
