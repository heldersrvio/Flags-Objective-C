//
//  DetailViewController.m
//  Flags
//
//  Created by Helder on 04/03/2021.
//

#import "DetailViewController.h"
#import <UIKit/UIKit.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize name;
@synthesize imageName;
@synthesize image;

- (void) viewDidLoad {
    [super viewDidLoad];
    
    [[self navigationItem] setRightBarButtonItem:[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action: @selector(shareTapped)]];
    [self setTitle:name];
    [ [self navigationItem] setLargeTitleDisplayMode: UINavigationItemLargeTitleDisplayModeNever];
    if (imageName != nil) {
        [[image layer] setBorderWidth:1];
        [[image layer] setBorderColor: [[UIColor lightGrayColor] CGColor]];
        [image setImage:[UIImage imageNamed:imageName]];
    }
}

- (void) shareTapped {
    NSData* imageToBeShared = UIImageJPEGRepresentation([image image], 0.8);
    if (imageToBeShared != nil) {
        UIActivityViewController* ac = [[UIActivityViewController alloc] initWithActivityItems:@[name, imageToBeShared] applicationActivities:@[]];
        [self presentViewController:ac animated:true completion:nil];
    }
}

@end
