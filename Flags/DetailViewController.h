//
//  DetailViewController.h
//  Flags
//
//  Created by Helder on 04/03/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController {
    NSString* name;
    NSString* imageName;
    __weak IBOutlet UIImageView *image;
}
@property (readwrite) NSString* name;
@property (readwrite) NSString* imageName;
@property (weak, readwrite) UIImageView* image;

- (void) viewDidLoad;
- (void) shareTapped;

@end

NS_ASSUME_NONNULL_END
