//
//  FirstViewController.m
//  Demo
//
//  Created by 楠王 on 2019/5/7.
//  Copyright © 2019 楠王. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstViewModel.h"
//#import "First1TableViewCell.h"

@interface FirstViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *mTableView;
@property (strong, nonatomic) FirstViewModel *viewModel;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (FirstViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[FirstViewModel alloc] init];
    }
    return _viewModel;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.viewModel.heights.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.viewModel.heights[indexPath.row] floatValue];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.viewModel cellForTableView:tableView atIndexPath:indexPath];
}

@end
