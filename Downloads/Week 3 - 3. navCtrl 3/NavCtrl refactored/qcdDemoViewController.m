//
//  qcdDemoViewController.m
//  NavCtrl
//
//

#import "qcdDemoViewController.h"
#import "ChildViewController.h"
#import "DataAccess.h"

@interface qcdDemoViewController ()

@end

@implementation qcdDemoViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    _responseData =[[NSMutableData alloc] init];
    
//    [self setDataAccess:[[DataAccess alloc] init]];
    
    self.dataAccess = [[DataAccess alloc] init];
    
    [self.dataAccess createCompanies];


    //_dataAccess = [[DataAccess alloc] init];
    
   // [_dataAccess viewDidLoad];

    
    NSURLRequest *request2 = [NSURLRequest requestWithURL:
          [NSURL URLWithString:@"http://download.finance.yahoo.com/d/quotes.csv?s=AAPL+NOK+2498.TW+005930.KS&f=l1&e=.csv"]] ;
    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request2 delegate:self];
    [conn start];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections. this is controlling number of sections in table
    //return 1;
    
    NSLog(@"numberOfSectionsInTableView");
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
     NSLog(@"numberOfRowsInSection");
    // Return the number of rows in the section.
    return [self.dataAccess.companyList count];
   // NSLog(@"numberOfRowsInSection %d", section);
   // return (section+1)*2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"UITableViewCell"];
    }
    
    
    int row = indexPath.row;
    NSLog(@"Cell at index: %d", row);
    
    //Find the company for this row in the table
    Company * company = self.dataAccess.companyList[row];
    NSLog(@"Got company %@ at index: %d from companyList Array", company.name, row);
    
    NSString *name = company.name;
    NSString *stockPriceString = company.stockPrice;
    
    
    // Configure the cell...
   
    //make the row's text be the company's name
    cell.textLabel.text = name;
    
    [[cell imageView] setImage: [UIImage imageNamed: company.logo]];

    cell.detailTextLabel.text = stockPriceString;
    
    
   // cell.textLabel.text =   [NSString stringWithFormat:@"Section %d, Row %d", indexPath.section, indexPath.row];
    //[self.companyList objectAtIndex:indexPath.row];

//    cell.detailTextLabel.text = company.stock;
    
    
  //  [[cell imageView] setImage: [UIImage imageNamed: [self.dataAccess.logoList objectAtIndex:indexPath.row]]];


    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    


//    if (indexPath.row ==0)
//    {
//        self.childVC.title = self.dataAccess.companyList[0];
//    }
//    
//    else if (indexPath.row ==1)
//    {
//        self.childVC.title = self.dataAccess.companyList[1];
//    }
//    
//    else if (indexPath.row ==2)
//    {
//        self.childVC.title = self.dataAccess.companyList[2];
//    }
//    
//    else {
//        self.childVC.title = self.dataAccess.companyList[3];
//    }
    
//    if ([self.childVC.title isEqualToString:self.dataAccess.companyList[0]]) {
//        self.dataAccess.products = self.dataAccess.products1;
//    }
//    else if ([self.childVC.title isEqualToString:self.dataAccess.companyList[1]]) {
//        self.dataAccess.products = self.dataAccess.products2;
//    }
//    else if ([self.childVC.title isEqualToString:self.dataAccess.companyList[2]]) {
//        self.dataAccess.products = self.dataAccess.products3;
//    }
//    else {
//        self.dataAccess.products = self.dataAccess.products4;
//    }
    
    self.childVC.dataAccess2 = self.dataAccess; //could've kept this the same as dataAccess but naming was to avoid confusion
                //can't just refer to self.dataAccess2 bc it is within childVC and it is blank before doing this assignment
    
    [self.navigationController
     pushViewController:self.childVC
     animated:YES];
    

}
 
#pragma mark NSURLConnection Delegate Methods

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    // A response has been received, this is where we initialize the instance var you created
    // so that we can append data to it in the didReceiveData method
    // Furthermore, this method is called each time there is a redirect so reinitializing it
    // also serves to clear it
    
    
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append the new data to the instance variable you declared
    
    [_responseData appendData:data]; //
    
}




- (NSCachedURLResponse *)connection:(NSURLConnection *)connection
                  willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    // Return nil to indicate not necessary to store a cached response for this connection
    return nil;
}


- (NSDictionary *) indexKeyedDictionaryFromArray:(NSArray *)array
{
    id objectInstance;
    NSUInteger indexKey = 0;
    
    NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc] init];
    for (objectInstance in array) //fast enumeration
        [mutableDictionary setObject:objectInstance forKey:[NSNumber numberWithUnsignedInt:indexKey++]];
    
    return (NSDictionary *)[mutableDictionary autorelease];
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    // The request is complete and data has been received
    // You can parse the stuff in your instance variable now
    NSString *str =  [[NSString alloc] initWithData:_responseData encoding:NSUTF8StringEncoding];
    NSMutableArray *responseArray= [NSMutableArray arrayWithArray:   [str componentsSeparatedByString:@"\n"]  ];
    
    //includes extra blank character at the end; just leaving it there for now
    NSLog(@"Response Array: %@", responseArray);
    
    
    self.stockPriceList = responseArray;

   

      for(int i=0;i<[self.dataAccess.companyList count];i++){
        
          Company *company = self.dataAccess.companyList[i];
          
          
          NSMutableString *string = responseArray[i];
          NSLog(@"stock string: %@", string);
          
          
          company.stockPrice = string;
          
      } //simple loop for referring to items in companyList
    
    
    
    
    [self.tableView reloadData];
    
    
    NSLog (@"printifcalled");
    
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // The request has failed for some reason!
    // Check the error var
}


@end
