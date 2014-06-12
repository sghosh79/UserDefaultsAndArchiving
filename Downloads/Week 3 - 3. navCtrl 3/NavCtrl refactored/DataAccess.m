//
//  DataAccess.m
//  NavCtrl
//
//  Created by shu ghosh on 4/29/14.
//

#import "DataAccess.h"


@implementation DataAccess


//no viewDidLoad needed


-(void) createCompanies {
    
//    NSString *string = [[NSString alloc ] init] ;

    Company *apple = [[Company alloc] init];
    apple.name = @"Apple";
    apple.logo = @"apple.jpeg";
    apple.stockSymbol = @"AAPL";
    
    Company *nokia = [[Company alloc] init];
    nokia.name = @"Nokia";
    nokia.logo = @"nokia.jpeg";
    nokia.stockSymbol = @"NOK";
    
    Company *htc = [[Company alloc] init];
    htc.name = @"HTC";
    htc.logo = @"htc.jpg";
    htc.stockSymbol = @"2498.TW";
    
    Company *samsung = [[Company alloc] init];
    samsung.name = @"Samsung";
    samsung.logo = @"Samsung.jpg";
    samsung.stockSymbol = @"005930.KS";
    
    self.companyList = [[NSMutableArray alloc] init];
    [self.companyList addObject:apple];
    [self.companyList addObject:nokia];
    [self.companyList addObject:htc];
    [self.companyList addObject:samsung];

    
}

-(void) createProducts {
    
    //    NSString *string = [[NSString alloc ] init] ;
    
    Product *ipad = [[Product alloc] init];
    ipad.name = @"iPad";
    ipad.website = @"http://www.apple.com/ipad/";
    [self addProduct:ipad toCompany:self.companyList[0]];
    
    
    Product *ipodtouch = [[Product alloc] init];
    ipodtouch.name = @"iPod Touch";
    ipodtouch.website = @"http://www.apple.com/ipod-touch/";
    [self addProduct:ipodtouch toCompany:self.companyList[0]];

    Product *iphone = [[Product alloc] init];
    iphone.name = @"iPhone";
    iphone.website = @"http://www.apple.com/iphone/";
    [self addProduct:iphone toCompany:self.companyList[0]];

    Product *lumiaicon = [[Product alloc] init];
    lumiaicon.name = @"Lumia Icon";
    lumiaicon.website = @"http://www.nokia.com/us-en/phones/phone/lumia-icon/";
    [self addProduct:lumiaicon toCompany:self.companyList[1]];

    Product *lumia1520 = [[Product alloc] init];
    lumia1520.name = @"Lumia 1520";
    lumia1520.website = @"http://www.nokia.com/us-en/phones/phone/lumia1520/";
    [self addProduct:lumia1520 toCompany:self.companyList[1]];

    Product *lumia2520 = [[Product alloc] init];
    lumia2520.name = @"Lumia 2520";
    lumia2520.website = @"http://www.nokia.com/us-en/phones/phone/lumia2520/";
    [self addProduct:lumia2520 toCompany:self.companyList[1]];

    Product *windowsphone = [[Product alloc] init];
    windowsphone.name = @"Windows Phone 8X";
    windowsphone.website = @"http://www.htc.com/www/smartphones/htc-wp-8x/";
    [self addProduct:windowsphone toCompany:self.companyList[2]];

    Product *htcdesire = [[Product alloc] init];
    htcdesire.name = @"HTC Desire";
    htcdesire.website = @"http://www.htc.com/us/smartphones/htc-desire/";
    [self addProduct:htcdesire toCompany:self.companyList[2]];

    Product *htconemax = [[Product alloc] init];
    htconemax.name = @"HTC One Max";
    htconemax.website = @"http://www.htc.com/us/smartphones/htc-one-max/";
    [self addProduct:htconemax toCompany:self.companyList[2]];
    
    Product *galaxys4 = [[Product alloc] init];
    galaxys4.name = @"Galaxy S4";
    galaxys4.website = @"http://www.samsung.com/global/microsite/galaxys4/";
    [self addProduct:galaxys4 toCompany:self.companyList[3]];

    Product *galaxynote = [[Product alloc] init];
    galaxynote.name = @"Galaxy Note";
    galaxynote.website = @"http://www.samsung.com/global/microsite/galaxynote/";
    [self addProduct:galaxynote toCompany:self.companyList[3]];

    Product *galaxytab = [[Product alloc] init];
    galaxytab.name = @"Galaxy Tab";
    galaxytab.website = @"http://www.samsung.com/global/microsite/galaxytab/";
    [self addProduct:galaxytab toCompany:self.companyList[3]];


}



-(void)addProduct:(Product *)product toCompany:(Company *)company
//lowercase variables // able to break up method name so easier to read that we can pass multiple arguments

{
    [company.products addObject:product];
    //adding a product to a company's products array

}


@end
