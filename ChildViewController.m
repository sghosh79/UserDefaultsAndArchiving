//
//  ChildViewController.m
//  NavCtrl
//
//

#import "ChildViewController.h"

@interface ChildViewController ()

@end

@implementation ChildViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.wbc = [[WebViewController alloc] init];
 //   self.dataAccess2 = [[DataAccess alloc] init]; referring to a new instance of dataAccess which is not the one we want

    
   // [[self.qcdDemoViewController.dataAccess
      
     // [self.asdlksnjdkjsdb]
    
    
    //self.dataAccess2 = [self createCompanies];

    
    
}



- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    [self.tableView reloadData];

    

}



#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection");
    return [self.company.products count];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    int row = indexPath.row;
    NSLog(@"Cell at index: %d", row);
    
    Product *product = [self.company.products objectAtIndex: row];
    
    cell.textLabel.text = product.name;
    
    
    return cell;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //[self.company.products removeObjectAtIndex:indexPath.row];
    
    [self.dataAccess2 deleteCompany:self.company andDeleteProduct:indexPath];
    
    [self.tableView reloadData];
    
    //[self.dataAccess2   deleteCompany:    andDeleteProduct:   ];
    
    
    
}




#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    int row = indexPath.row;
    NSLog(@"Cell at index: %d", row);
    
    Product *product = [self.company.products objectAtIndex: row];
    
    self.wbc.productURL = product.website;
    
    [self.navigationController pushViewController:self.wbc animated:YES];

    
    
}
 


//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
////    NSLog(@"called %@ ", [self.dataAccess2.products objectAtIndex:indexPath.row]  );
////    
////    self.wbc.title = [self.dataAccess2.products objectAtIndex:indexPath.row];
//    
//    
//  

//}




@end
