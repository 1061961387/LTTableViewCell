//
//  LTTableViewCell.m
//  Demo
//
//  Created by 楠王 on 2019/5/7.
//  Copyright © 2019 楠王. All rights reserved.
//

#import "LTTableViewCell.h"

@implementation LTTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
        
        //        [self.cellView mas_makeConstraints:^(MASConstraintMaker *make) {
        //            make.top.left.right.bottom.equalTo(self.contentView);
        //        }];
    }
    return self;
}

- (UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLabel];
    }
    return _titleLabel;
}

- (UILabel *)contentLabel
{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_contentLabel];
    }
    return _contentLabel;
}

- (UIImageView *)icon
{
    if (!_icon) {
        _icon = [[UIImageView alloc] init];
        [self.contentView addSubview:_icon];
    }
    return _icon;
}

- (void)updateUI:(id<ViewModelProtocol>)viewModel
{
    @throw [NSException exceptionWithName:@"yichang" reason:@"reason" userInfo:nil];
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
