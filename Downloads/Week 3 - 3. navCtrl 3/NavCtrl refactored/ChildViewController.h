//
//  ChildViewController.h
//  NavCtrl
//
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"
#import "qcdDemoViewController.h"
#import "DataAccess.h"

@interface ChildViewController : UITableViewController


@property(nonatomic, retain) WebViewController *wbc;

@property (nonatomic, retain) DataAccess *dataAccess2;


@end
