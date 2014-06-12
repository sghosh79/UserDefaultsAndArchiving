//
//  Company.m
//  NavCtrl
//
//  Created by shu ghosh on 4/30/14.
//

#import "Company.h"

@implementation Company

//- (void)viewDidLoad
//
//{


//self.companyList = [NSMutableArray arrayWithObjects: @"Apple mobile devices", @"Nokia mobile devices", @"HTC mobile devices", @"Samsung mobile devices", nil];

- (void)encodeWithCoder:(NSCoder *)encoder
{
    //Encode properties, other class variables, etc
    NSLog(@"Company Encoder Called");
    [encoder encodeObject:[self name] forKey:@"name"];
    [encoder encodeObject:[self logo] forKey:@"logo"];
    [encoder encodeObject:[self stockPrice] forKey:@"stockPrice"];
    [encoder encodeObject:[self stockSymbol] forKey:@"stockSymbol"];
    [encoder encodeObject:[self products] forKey:@"products"];

    
}

- (id)initWithCoder:(NSCoder *)decoder
{
    NSLog(@"Company Decoder Called");
    self = [super init];
    if(self)
    {
        //decode properties, other class vars
        [self setName:[decoder decodeObjectForKey:@"name"]];
        [self setLogo:[decoder decodeObjectForKey:@"logo"]];
        [self setStockPrice:[decoder decodeObjectForKey:@"stockPrice"]];
        [self setStockSymbol:[decoder decodeObjectForKey:@"stockSymbol"]];
        [self setProducts:[decoder decodeObjectForKey:@"products"]];
    
    
    
    }
    return self;
}

    
    


@end
