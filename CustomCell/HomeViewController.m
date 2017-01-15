//
//  HomeViewController.m
//  CustomCell
//
//  Created by apple on 16/11/8.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"

#import "CustomCell.h"
#define CUSTOMCELL @"CustomCe"

@interface HomeViewController ()<UITableViewDelegate, UITableViewDataSource>{
    UITableView *mTableView;
}
    

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主页";
    mTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    mTableView.delegate = self;
    mTableView.dataSource = self;
    [self.view addSubview:mTableView];
    
    // 注册
    [mTableView registerClass:[CustomCell class] forCellReuseIdentifier:CUSTOMCELL];
    // Do any additional setup after loading the view.
}

#pragma mark - UITableViewDelegate & UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell = [mTableView dequeueReusableCellWithIdentifier:CUSTOMCELL];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    DetailViewController *VC = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
