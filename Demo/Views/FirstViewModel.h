//
//  FirstViewModel.h
//  Demo
//
//  Created by 楠王 on 2019/5/7.
//  Copyright © 2019 楠王. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "First1TableViewCell.h"
#import "First2TableViewCell.h"
#import "ViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface FirstViewModel : NSObject<ViewModelProtocol>

@property (strong, nonatomic) NSArray *heights;

@property (strong, nonatomic) NSMutableArray *dataArray;

- (UITableViewCell *)cellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
