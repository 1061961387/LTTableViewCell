//
//  FirstViewModel.m
//  Demo
//
//  Created by 楠王 on 2019/5/7.
//  Copyright © 2019 楠王. All rights reserved.
//

#import "FirstViewModel.h"

static NSString *cell1Id = @"First1TableViewCell";
static NSString *cell2Id = @"First2TableViewCell";

@implementation FirstViewModel

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (NSArray *)heights
{
    if (!_heights) {
        _heights = [[NSArray alloc] initWithObjects:@"60", @"100", nil];
    }
    return _heights;
}

- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}

- (UITableViewCell *)cellForTableView:(id)tableView atIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        First1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell1Id];
        if (!cell) {
            cell = [[First1TableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cell1Id];
        }
        [cell updateUI:self];
        return cell;
    }else{
        First2TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell2Id];
        if (!cell) {
            cell = [[First2TableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cell2Id];
        }
        [cell updateUI:self];
        return cell;
    }
    
}


@end
