//
//  MainViewController.m
//  NeteaseTransition
//
//  Created by 蔡越 on 11/6/16.
//  Copyright © 2016 蔡越. All rights reserved.
//

#import "MainViewController.h"
#import "NeteaseTransitionAnimation.h"
#import "ForwardViewController.h"

@interface MainViewController ()<UIViewControllerTransitioningDelegate>

@property (nonatomic, strong) NeteaseTransitionAnimation *transitionAnimation;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Forward" forState:UIControlStateNormal];
    [button sizeToFit];
    [button setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void) buttonClicked:(id)sender {
    ForwardViewController *vc = [[ForwardViewController alloc] init];
    vc.transitioningDelegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return self.transitionAnimation;
}

#pragma mark - getters
- (NeteaseTransitionAnimation *)transitionAnimation {
    if (!_transitionAnimation) {
        _transitionAnimation = [[NeteaseTransitionAnimation alloc] init];
    }
    return _transitionAnimation;
}

@end
