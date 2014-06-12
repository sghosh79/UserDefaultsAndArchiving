//
//  DataAccess.h
//  NavCtrl
//
//  Created by shu ghosh on 4/29/14.
//

#import <Foundation/Foundation.h>
#import "Company.h"
#import "Product.h"


@interface DataAccess : NSObject


@property (nonatomic, retain) NSMutableArray* companyList;

-(void) createData;

-(void) createCompanies;

-(void) deleteCompany:(Company *)company andDeleteProduct:(NSIndexPath*)indexPath;

@end


//company has property name, product array, stock symbol, logo
//each product in the array has name, url/website
//data access is using the company and product classes to

//create company object --> company.name = name; company.productarray = certain products

