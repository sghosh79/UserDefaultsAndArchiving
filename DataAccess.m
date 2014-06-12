//
//  DataAccess.m
//  NavCtrl
//
//  Created by shu ghosh on 4/29/14.
//

#import "DataAccess.h"


@implementation DataAccess

/*
- (void)encodeWithCoder:(NSCoder *)coder {
    NSLog(@"encodeWithCoder");
    [coder encodeObject:self.companyList    forKey:@"companyList"];
}

- (id)initWithCoder:(NSCoder *)coder {
    NSLog(@"initWithCoder");
    self = [self init];
    self.companyList = [coder decodeObjectForKey:@"companyList"];
    return self;
}

 //these two methods are useful for archiving and initilizing from archive
 */

-(void) createData
{
    NSLog(@"createData");
    
    //first fetch it, first time it will be blank/nil...check if its nil create it
    
    [self readData];
    if(self.companyList==nil){
        [self createCompanies];
        [self saveData]; //if companyList is nil, create the companyList and then save it and it will no longer be nil
    }
    
}

-(void) deleteCompany:(Company *)company andDeleteProduct:(NSIndexPath*)indexPath{
    
    //pass the company from the tableview, then pass the row from the tablewview
    //Product *product = [company.products objectAtIndex:indexPath.row];
    //[self deleteProductFromDB:product.name];
    [company.products removeObjectAtIndex:indexPath.row];
    [self saveData]; //in delete method remember to save data afterwards
    
}



-(void)saveData //don't need a paramter bc we're using self.companyList
{ //for archiving and saving data
    NSLog(@"saveData");
    NSData *encodedObject = [NSKeyedArchiver archivedDataWithRootObject:self.companyList];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:encodedObject forKey:@"NSUDS-SAVE-DATA"];
    [defaults synchronize];
    NSLog(@"Data Saved");
}


-(void)readData
{
    NSLog(@"readData");
    // Fetching saved custom object data from NSUserDefaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //The NSUserDefaults class provides a programmatic interface for interacting with the defaults system. The defaults system allows an application to customize its behavior to match a user’s preferences. For example, you can allow users to determine what units of measurement your application displays or how often documents are automatically saved. Applications record such preferences by assigning values to a set of parameters in a user’s defaults database. The parameters are referred to as defaults since they’re commonly used to determine an application’s default state at startup or the way it acts by default.
    //+ (NSUserDefaults *)standardUserDefaults
    //Returns the shared defaults object.
    
    NSData *encodedObject = [defaults objectForKey:@"NSUDS-SAVE-DATA"];
    if(encodedObject==nil)return;
    //DataAccess *readData = [NSKeyedUnarchiver unarchiveObjectWithData:encodedObject];
    self.companyList = [NSKeyedUnarchiver unarchiveObjectWithData:encodedObject];
    //NSKeyedUnarchiver, a concrete subclass of NSCoder, defines methods for decoding a set of named objects (and scalar values) from a keyed archive. Such archives are produced by instances of the NSKeyedArchiver class.
    //+ (id)unarchiveObjectWithData:(NSData *)data
    //Description: Decodes and returns the object graph previously encoded by NSKeyedArchiver and stored in a given NSData object. This method raises an NSInvalidArchiveOperationException if data is not a valid archive.
    //Parameters: data - An object graph previously encoded by NSKeyedArchiver.
    //Returns: The object graph previously encoded by NSKeyedArchiver and stored in data.
    
    
    NSLog(@"Data Fetched");
    
    //return statement
}

-(void) createCompanies {

    Company *apple = [[Company alloc] init];
    apple.name = @"Apple";
    apple.logo = @"apple.jpeg";
    apple.stockSymbol = @"AAPL";
    apple.products = [[NSMutableArray alloc]init];
    
    Company *nokia = [[Company alloc] init];
    nokia.name = @"Nokia";
    nokia.logo = @"nokia.jpeg";
    nokia.stockSymbol = @"NOK";
    nokia.products = [[NSMutableArray alloc]init];
    
    Company *htc = [[Company alloc] init];
    htc.name = @"HTC";
    htc.logo = @"htc.jpg";
    htc.stockSymbol = @"2498.TW";
    htc.products = [[NSMutableArray alloc]init];
    
    Company *samsung = [[Company alloc] init];
    samsung.name = @"Samsung";
    samsung.logo = @"Samsung.jpg";
    samsung.stockSymbol = @"005930.KS";
    samsung.products = [[NSMutableArray alloc]init];
    
    self.companyList = [[NSMutableArray alloc] init];
    [self.companyList addObject:apple];
    [self.companyList addObject:nokia];
    [self.companyList addObject:htc];
    [self.companyList addObject:samsung];
    
    [self createProducts];

    
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
    [[self.companyList[3] products] addObject: galaxytab];


}



-(void)addProduct:(Product *)product toCompany:(Company *)company
//lowercase variables // able to break up method name so easier to read that we can pass multiple arguments

{
    [company.products addObject:product];
    //adding a product to a company's products array

}



@end
