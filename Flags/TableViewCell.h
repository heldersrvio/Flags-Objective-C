//
//  TableViewCell.h
//  Flags
//
//  Created by Helder on 04/02/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *countryFlagImg;
@property (weak, nonatomic) IBOutlet UILabel *countryName;

@end

NS_ASSUME_NONNULL_END
