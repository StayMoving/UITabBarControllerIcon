//
//  SecondViewController.m
//  UITabBarControllerIcon
//
//  Created by YouXianMing on 15/8/31.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@property (nonatomic, strong) UIWebView  *webView;

@end


@implementation SecondViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.webView = [self webViewWithUrlString:@"http://stackoverflow.com/" frame:CGRectMake(0, 0, Width, Height)];
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
