//
//  Company.h
//  NavCtrl
//
//  Created by shu ghosh on 4/30/14.
//

#import <Foundation/Foundation.h>

@interface Company : NSObject


@property (nonatomic, retain) NSMutableString *name;
@property (nonatomic, retain) NSMutableString *logo;

@property (nonatomic, retain) NSMutableString *stockPrice;
@property (nonatomic, retain) NSMutableString *stockSymbol;



@property (nonatomic, retain) NSMutableArray *products;
//@property (nonatomic, retain) NSMutableArray *products1;
//@property (nonatomic, retain) NSMutableArray *products2;
//@property (nonatomic, retain) NSMutableArray *products3;
//@property (nonatomic, retain) NSMutableArray *products4;


@end
