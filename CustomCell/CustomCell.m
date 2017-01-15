//
//  CustomCell.m
//  CustomCell
//
//  Created by apple on 16/11/8.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        
        self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 30, 30)];
        self.imgView.backgroundColor = [UIColor cyanColor];
        [self addSubview:_imgView];
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 6, self.frame.size.width - 50, 21)];
        self.nameLabel.text = @"你好";
        [self addSubview:self.nameLabel];
        
        self.detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 33, self.frame.size.width - 50, 21)];
        self.detailLabel.text = @"Hello";
        [self addSubview:self.detailLabel];
        
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
