//
//  First1TableViewCell.m
//  Demo
//
//  Created by 楠王 on 2019/5/7.
//  Copyright © 2019 楠王. All rights reserved.
//

#import "First1TableViewCell.h"
#import "FirstViewModel.h"

@interface First1TableViewCell ()
@property (strong, nonatomic) FirstViewModel *viewModel;
@end

@implementation First1TableViewCell

- (void)updateUI:(id<ViewModelProtocol>)viewModel
{
    self.viewModel = viewModel;
    self.titleLabel.frame = CGRectMake(15, 0, 100, [self.viewModel.heights[0] floatValue]);
    self.titleLabel.text = @"123";
    
    self.contentLabel.frame = CGRectMake(120, 0, 100, [self.viewModel.heights[0] floatValue]);
    self.contentLabel.text = @"456";
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
