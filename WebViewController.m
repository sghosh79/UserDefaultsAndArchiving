//
//  webView.m
//
//
//
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController



-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSURLRequest *request = [NSURLRequest requestWithURL: [NSURL URLWithString:self.productURL]] ;
    [self.webView loadRequest:request] ;

}


@end
