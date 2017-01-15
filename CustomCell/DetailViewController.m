//
//  DetailViewController.m
//  CustomCell
//
//  Created by apple on 16/11/9.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "DetailViewController.h"
#import "Masonry.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"详情页面";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *greenView = UIView.new;
    greenView.backgroundColor = UIColor.greenColor;
    greenView.layer.borderColor = UIColor.blackColor.CGColor;
    greenView.layer.borderWidth = 2;
    [self.view addSubview:greenView];
    
    UIView *redView = UIView.new;
    redView.backgroundColor = UIColor.redColor;
    redView.layer.borderColor = UIColor.blackColor.CGColor;
    redView.layer.borderWidth = 2;
    [self.view addSubview:redView];
    
    UIView *blueView = UIView.new;
    blueView.backgroundColor = UIColor.blueColor;
    blueView.layer.borderColor = UIColor.blackColor.CGColor;
    blueView.layer.borderWidth = 2;
    [self.view addSubview:blueView];
    
    UIView *superview = self.view;
    int padding = 10;
    
    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.greaterThanOrEqualTo(superview.mas_top).offset(padding + 64);
        make.left.equalTo(superview.mas_left).offset(padding);
        make.bottom.equalTo(blueView.mas_top).offset(-padding);
        make.right.equalTo(redView.mas_left).offset(-padding);
        make.width.equalTo(redView.mas_width);

        make.height.equalTo(redView.mas_height);
        make.height.equalTo(blueView.mas_height);
        
    }];

    //with is semantic and option
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superview.mas_top).with.offset(padding + 64); //with with
        make.left.equalTo(greenView.mas_right).offset(padding); //without with
        make.bottom.equalTo(blueView.mas_top).offset(-padding);
        make.right.equalTo(superview.mas_right).offset(-padding);
        make.width.equalTo(greenView.mas_width);
        
        make.height.equalTo(@[greenView, blueView]); //can pass array of views
    }];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(greenView.mas_bottom).offset(padding);
        make.left.equalTo(superview.mas_left).offset(padding);
        make.bottom.equalTo(superview.mas_bottom).offset(-padding);
        make.right.equalTo(superview.mas_right).offset(-padding);
        make.height.equalTo(@[greenView.mas_height, redView.mas_height]); //can pass array of attributes
    }];
 

    // Do any additional setup after loading the view.
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
