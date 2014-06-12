//
//  ChildViewController.h
//  NavCtrl
//
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"
#import "qcdDemoViewController.h"
#import "DataAccess.h"
#import "Company.h"
#import "Product.h"

@class qcdDemoViewController; //add Class to avoid circular issue


@interface ChildViewController : UITableViewController


@property(nonatomic, retain) WebViewController *wbc;

@property (nonatomic, retain) DataAccess *dataAccess2;

@property (nonatomic, retain) qcdDemoViewController *qcdDemoVC;

@property (nonatomic, retain) Company *company;

@property (nonatomic, retain) Product *selectedProduct;

//@property(nonatomic, retain) NSObject *qcdDemoViewController;
//@property(nonatomic, retain) NSObject *asdlksnjdkjsdb;

@end
