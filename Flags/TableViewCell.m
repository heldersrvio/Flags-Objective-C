//
//  TableViewCell.m
//  Flags
//
//  Created by Helder on 04/02/2021.
//

#import "TableViewCell.h"

@implementation TableViewCell

@synthesize countryFlagImg;
@synthesize countryName;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
