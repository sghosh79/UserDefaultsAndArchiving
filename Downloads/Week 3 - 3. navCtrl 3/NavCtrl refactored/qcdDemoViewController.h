//
//  qcdDemoViewController.h
//  NavCtrl
//
//

#import <UIKit/UIKit.h>
#import "ChildViewController.h"
#import "DataAccess.h"
#import "Company.h"

@class ChildViewController;
@class DataAccess;

@interface qcdDemoViewController : UITableViewController <NSURLConnectionDataDelegate> 
{    NSMutableData *_responseData;

}

@property (nonatomic, retain) DataAccess *dataAccess;
@property (nonatomic, retain) NSArray *stockPriceList;


@property (nonatomic, retain) IBOutlet  ChildViewController * childVC;

@end
