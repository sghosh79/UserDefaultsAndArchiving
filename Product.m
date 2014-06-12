//
//  Product.m
//  NavCtrl
//
//  Created by shu ghosh on 4/30/14.
//

#import "Product.h"

@implementation Product

//- (void)viewDidLoad
//
//{
//
//
//}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    //Encode properties, other class variables, etc
    NSLog(@"Product Encoder Called");
    [encoder encodeObject:[self name] forKey:@"name"];
    [encoder encodeObject:[self website] forKey:@"website"];



}

- (id)initWithCoder:(NSCoder *)decoder
{
    NSLog(@"Product Decoder Called");
    self = [super init];
    if(self)
    {
        //decode properties, other class vars
        [self setName:[decoder decodeObjectForKey:@"name"]];
        [self setWebsite:[decoder decodeObjectForKey:@"website"]];
        
    }
    return self;
}



    
@end
