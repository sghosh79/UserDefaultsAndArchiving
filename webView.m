//
//  webView.m
//  
//
//  Created by shu ghosh on 4/22/14.
//
//

#import "webView.h"

@interface webView ()

@end

@implementation webView

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


-(void)viewWillAppear:(BOOL)animated
{
    
   NSURLRequest *request = [NSURLRequest requestWithURL:
                     [NSURL URLWithString:@"http://www.apple.com/ipad/"]] ;

 [self.webView loadRequest:request] ;
    
    
    
//    
    //    if(self.title = @"Apple mobile devices")
    //    {
    //        cell.textLabel.text = [self.companyList objectAtIndex:indexPath.row];
    //    //@"iPad", @"iPod Touch",@"iPhone"
    //    if (indexPath.row ==0)
    //    {
    //        self.title = @"iPad"
    //        NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                 [NSURL URLWithString:@"http://www.apple.com/ipad/"]] ;
    //
    //        [webView loadRequest:request] ;
    //
    //    }
    //
    //    else if (indexPath.row ==1)
    //    {
    //        self.title = @"iPod Touch"
    //        NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                 [NSURL URLWithString:@"http://www.apple.com/ipod-touch/"]] ;
    //
    //        [webView loadRequest:request] ;
    //
    //    }
    //
    //    else (indexPath.row ==2)
    //    {
    //        self.title = @"iPhone"
    //        NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                 [NSURL URLWithString:@"http://www.apple.com/iphone/"]] ;
    //
    //        [webView loadRequest:request] ;
    //
    //    }
    ////////////////////////////////////////////////
    //
    //        if(self.title = @"Nokia mobile devices")
    //        {
    //            cell.textLabel.text = [self.companyList objectAtIndex:indexPath.row];
    //            //@"Lumia Icon", @"Lumia 1520",@"Lumia 2520
    //            if (indexPath.row ==0)
    //            {
    //                self.title = @"Lumia Icon"
    //                NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                         [NSURL URLWithString:@"http://www.nokia.com/us-en/phones/phone/lumia-icon/"]] ;
    //
    //                [webView loadRequest:request] ;
    //
    //            }
    //
    //            else if (indexPath.row ==1)
    //            {
    //                self.title = @"Lumia 1520"
    //                NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                         [NSURL URLWithString:@"http://www.nokia.com/us-en/phones/phone/lumia1520/"]] ;
    //
    //                [webView loadRequest:request] ;
    //
    //            }
    //
    //            else (indexPath.row ==2)
    //            {
    //                self.title = @"Lumia 2520"
    //                NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                         [NSURL URLWithString:@"http://www.nokia.com/global/products/tablet/lumia2520/"]] ;
    //
    //                [webView loadRequest:request] ;
    //
    //            }
    //
    //
    //     }
    // //////////////////////////////////////////////////////////////
    //
    //        if(self.title = @"HTC mobile devices")
    //        {
    //            cell.textLabel.text = [self.companyList objectAtIndex:indexPath.row];
    //            //"Windows Phone 8X", @"HTC Desire",@"HTC One max"
    //            if (indexPath.row ==0)
    //            {
    //                self.title = @"Windows Phone 8X"
    //                NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                         [NSURL URLWithString:@"http://www.nokia.com/us-en/phones/phone/lumia-icon/"]] ;
    //
    //                [webView loadRequest:request] ;
    //
    //            }
    //
    //            else if (indexPath.row ==1)
    //            {
    //                self.title = @"HTC Desire"
    //                NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                         [NSURL URLWithString:@"http://www.htc.com/us/smartphones/htc-desire/"]] ;
    //
    //                [webView loadRequest:request] ;
    //
    //            }
    //
    //            else (indexPath.row ==2)
    //            {
    //                self.title = @"HTC One max"
    //                NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                         [NSURL URLWithString:@"http://www.htc.com/us/smartphones/htc-one-max/"]] ;
    //
    //                [webView loadRequest:request] ;
    //
    //            }
    //
    //
    //   //////////////////////////////////////////////////////////////
    //
    //            if(self.title = @"Samsung mobile devices")
    //            {
    //                cell.textLabel.text = [self.companyList objectAtIndex:indexPath.row];
    //                //"Galaxy S4", @"Galaxy Note", @"Galaxy Tab
    //                if (indexPath.row ==0)
    //                {
    //                    self.title = @"Galaxy S4"
    //                    NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                             [NSURL URLWithString:@"http://www.samsung.com/global/microsite/galaxys4/"]] ;
    //
    //                    [webView loadRequest:request] ;
    //
    //                }
    //
    //                else if (indexPath.row ==1)
    //                {
    //                    self.title = @"Galaxy Note"
    //                    NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                             [NSURL URLWithString:@"http://www.samsung.com/global/microsite/galaxynote/note/"]] ;
    //
    //                    [webView loadRequest:request] ;
    //
    //                }
    //                
    //                else (indexPath.row ==2)
    //                {
    //                    self.title = @"Galaxy Tab"
    //                    NSURLRequest *request = [NSURLRequest requestWithURL:
    //                                             [NSURL URLWithString:@"http://www.samsung.com/us/mobile/galaxy-tab/"]] ;
    //                    
    //                    [webView loadRequest:request] ;
    //                    
    //                }
    // 
    //    /////////////////////////////////////////////////////////////
    
    
}
        
        


- (void)dealloc {
    [_webView release];
    [super dealloc];
}


@end
