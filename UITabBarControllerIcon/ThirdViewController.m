//
//  ThirdViewController.m
//  UITabBarControllerIcon
//
//  Created by YouXianMing on 15/8/31.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ThirdViewController.h"


@interface ThirdViewController ()

@property (nonatomic, strong) UIWebView  *webView;

@end


@implementation ThirdViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.webView = [self webViewWithUrlString:@"https://developer.apple.com/" frame:CGRectMake(0, 0, Width, Height)];
    [self.view addSubview:self.webView];
}

- (UIWebView *)webViewWithUrlString:(NSString *)urlString frame:(CGRect)frame {
    
    UIWebView *webView      = [[UIWebView alloc] initWithFrame:frame];
    webView.backgroundColor = [UIColor whiteColor];
    
    NSURL *url            = [NSURL URLWithString:urlString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [webView loadRequest:request];
    
    webView.scrollView.showsVerticalScrollIndicator = NO;
    
    return webView;
}

@end
