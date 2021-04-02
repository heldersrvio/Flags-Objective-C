//
//  ViewController.h
//  Flags
//
//  Created by Helder on 04/02/2021.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController {
    NSArray* countries;
}
@property (readwrite, retain) NSArray* countries;
- (void) viewDidLoad;
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

