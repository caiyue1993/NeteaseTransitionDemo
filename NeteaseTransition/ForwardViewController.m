//
//  ForwardViewController.m
//  NeteaseTransition
//
//  Created by 蔡越 on 11/6/16.
//  Copyright © 2016 蔡越. All rights reserved.
//

#import "ForwardViewController.h"
#import "MainViewController.h"
#import "NeteaseTransitionAnimation.h"

@implementation ForwardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    
    UILabel *label = [UILabel new];
    [label setText:@"This is the another page"];
    [label sizeToFit];
    [label setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];;
    [self.view addSubview:label];
}

@end
