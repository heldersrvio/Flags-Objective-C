//
//  ViewController.m
//  Flags
//
//  Created by Helder on 04/02/2021.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize countries;

- (void)viewDidLoad {
    [super viewDidLoad];
    countries = @[@"Estonia", @"France", @"Germany", @"Ireland", @"Italy", @"Monaco", @"Nigeria", @"Poland", @"Russia", @"Spain", @"UK", @"US"];
    [self setTitle:@"Country flags"];
    [[[self navigationController] navigationBar] setPrefersLargeTitles:true];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [countries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Flag" forIndexPath:indexPath];
    NSString* imageName = countries[[indexPath row]];
    NSString* lowerCasedImageName = [imageName lowercaseString];
    
    [[cell countryFlagImg] setImage: [UIImage imageNamed: lowerCasedImageName] ];
    [[cell countryName] setText:imageName];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


@end
