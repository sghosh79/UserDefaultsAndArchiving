//
//  Company.h
//  NavCtrl
//
//  Created by shu ghosh on 4/30/14.
//

#import <Foundation/Foundation.h>

@interface Company : NSObject <NSCoding>


@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *logo;

@property (nonatomic, retain) NSString *stockPrice;
@property (nonatomic, retain) NSString *stockSymbol;



@property (nonatomic, retain) NSMutableArray *products;
//@property (nonatomic, retain) NSMutableArray *products1;
//@property (nonatomic, retain) NSMutableArray *products2;
//@property (nonatomic, retain) NSMutableArray *products3;
//@property (nonatomic, retain) NSMutableArray *products4;


@end
