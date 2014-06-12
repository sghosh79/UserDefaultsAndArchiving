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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-(void)viewWillAppear:(BOOL)animated
//{
//    
//    if ([self.title isEqualToString:self.dataAccess3.products1[0]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites1[0]]] ;
//        
//        [self.webView loadRequest:request] ;
//        
//    }
//    
//    
//    else if ([self.title isEqualToString:self.dataAccess3.products1[1]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites1[1]]] ;
//        
//        [self.webView loadRequest:request] ;
//    }
//    
//    else if ([self.title isEqualToString:self.dataAccess3.products1[2]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites1[2]]] ;
//        
//        [self.webView loadRequest:request] ;
//        
//    }
//    
//    else if ([self.title isEqualToString:self.dataAccess3.products2[0]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites2[0]]] ;
//        
//        [self.webView loadRequest:request] ;
//    }
//    
//    else if ([self.title isEqualToString:self.dataAccess3.products2[1]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites2[1]]] ;
//        
//        [self.webView loadRequest:request] ;
//        
//    }
//    
//    else if ([self.title isEqualToString:self.dataAccess3.products2[2]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites2[2]]] ;
//        
//        [self.webView loadRequest:request] ;
//        
//    }
//    
//        
//    else if ([self.title isEqualToString: self.dataAccess3.products3[0] ])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites3[0]]] ;
//        
//        [self.webView loadRequest:request] ;
//    }
//    
//    else if ([self.title isEqualToString: self.dataAccess3.products3[1]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites3[1]]] ;
//        
//        [self.webView loadRequest:request] ;
//    }
//    
//    else if ([self.title isEqualToString: self.dataAccess3.products3[2]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites3[2]]] ;
//        
//        [self.webView loadRequest:request] ;
//        
//    }
//    
//    else if ([self.title isEqualToString: self.dataAccess3.products4[0]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites4[0]]] ;
//        
//        [self.webView loadRequest:request] ;
//    }
//    
//    
//    else if ([self.title isEqualToString: self.dataAccess3.products4[1]])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites4[1]]] ;
//        
//        [self.webView loadRequest:request] ;
//    }
//    
//    
//    else //if ([self.title isEqualToString: @"Galaxy Tab" ])
//    {
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                 [NSURL URLWithString:self.dataAccess3.websites4[2]]] ;
//        
//        [self.webView loadRequest:request] ;
//    }
//    
//}




- (void)dealloc {
    [_webView release];
    [super dealloc];
}


@end
