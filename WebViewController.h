//
//  webView.h
//  
//
//  Created by shu ghosh on 4/22/14.
//
//

#import <UIKit/UIKit.h>
#import "DataAccess.h"
#import "Product.h"
#import "Company.h"


@class ChildViewController; //add Class to avoid circular issue


@interface WebViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIWebView *webView;

@property(retain, nonatomic) NSString *productURL;

@end


