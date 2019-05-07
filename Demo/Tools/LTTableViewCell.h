//
//  LTTableViewCell.h
//  Demo
//
//  Created by 楠王 on 2019/5/7.
//  Copyright © 2019 楠王. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface LTTableViewCell : UITableViewCell<ViewModelProtocol>

@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *contentLabel;
@property (strong, nonatomic) UIImageView *icon;

- (void)updateUI:(id<ViewModelProtocol>)viewModel;

@end

NS_ASSUME_NONNULL_END
