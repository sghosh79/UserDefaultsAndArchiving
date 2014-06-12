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



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.childVC = [[ChildViewController alloc] init]; //allocating child
 
    
    
    self.dataAccess = [[DataAccess alloc] init];
    //[self.dataAccess createCompanies]; //creating companies w/o any logic behind it
    [self.dataAccess createData];
 
    self.childVC.dataAccess2 = self.dataAccess; //can't have this line without previous line bc we won't know what company products to list //now these are referring to the same thing

    
    NSMutableString *urlQuotes = [NSMutableString stringWithString:@"http://download.finance.yahoo.com/d/quotes.csv?s="];
    for(int i=0;i<self.dataAccess.companyList.count;i++){
        Company *company = self.dataAccess.companyList[i];
        [urlQuotes appendFormat:@"%@", company.stockSymbol];
        if(i<self.dataAccess.companyList.count-1)[urlQuotes appendString:@","];
    }
    [urlQuotes appendString:@"&f=l1"];
    
    NSLog(@"Quote URL: %@", urlQuotes);
    
    _responseData =[[NSMutableData alloc] init];
    NSURLRequest *request = [NSURLRequest requestWithURL:
                              [NSURL URLWithString:urlQuotes]] ;
    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [conn start];
    
    
    
}



#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"numberOfSectionsInTableView");
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection");
    return [self.dataAccess.companyList count];
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
    
    // Configure the cell...
    
    //make the row's text be the company's name
    cell.textLabel.text = company.name;
    [[cell imageView] setImage: [UIImage imageNamed: company.logo]];
    cell.detailTextLabel.text = company.stockPrice;
    
    
    return cell;
}



#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    int row = indexPath.row;
    NSLog(@"Cell at index: %d", row);
    self.childVC.company = self.dataAccess.companyList[row];
    
    
    [self.navigationController pushViewController:self.childVC animated:YES];
}




#pragma mark NSURLConnection Delegate Methods

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
        // Append the new data to the instance variable you declared
        [_responseData appendData:data];
}
    
    

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
        // The request is complete and data has been received
        // You can parse the stuff in your instance variable now
        NSString *str =  [[NSString alloc] initWithData:_responseData encoding:NSUTF8StringEncoding];
        NSMutableArray *responseArray= [NSMutableArray arrayWithArray:   [str componentsSeparatedByString:@"\n"]  ];
        
        //includes extra blank character at the end; just leaving it there for now
        NSLog(@"Response Array: %@", responseArray);
    
        for(int i=0;i<[self.dataAccess.companyList count];i++){
            Company *company = self.dataAccess.companyList[i];
            NSMutableString *string = responseArray[i];
            NSLog(@"adding stock price: %@ to company at index %d", string, i);
            company.stockPrice = string;
            
        } //simple loop for referring to items in companyList
        
    
        [self.tableView reloadData];
        
        
        NSLog (@"connectionDidFinishLoading Done");
        
        
}


-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
        NSLog (@"connection didFailWithError: %@", error.debugDescription);

    //Declaration: - (NSString *)debugDescription
    //Description: Returns a string that describes the contents of the receiver for presentation in the debugger. The debugger’s print-object command invokes this method to produce a textual description of an object. NSObject implements this method by calling through to the description method. Thus, by default, an object’s debug description is the same as its description. However, you can override debugDescription if you want to decouple these.
    //Returns: A string that describes the contents of the receiver for presentation in the debugger.
    
}
    


@end

