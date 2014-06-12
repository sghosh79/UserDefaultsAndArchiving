//
//  webView.h
//  
//
//  Created by shu ghosh on 4/22/14.
//
//

#import <UIKit/UIKit.h>
#import "DataAccess.h"

@interface WebViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIWebView *webView;

@property (nonatomic, retain) DataAccess *dataAccess3;




@end


