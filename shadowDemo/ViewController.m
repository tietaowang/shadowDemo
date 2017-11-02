//
//  ViewController.m
//  shadowDemo
//
//  Created by zhipeng on 2017/11/3.
//  Copyright © 2017年 com.guoshuobigdata.dev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imgView.layer.masksToBounds = YES;
    _imgView.layer.cornerRadius = _imgView.frame.size.width*0.5;
    UIView *shadowView = [[UIView alloc]initWithFrame:_imgView.frame];
    
    [self.view addSubview:shadowView];
    
    shadowView.layer.shadowColor = [UIColor blackColor].CGColor;
    
    shadowView.layer.shadowOffset = CGSizeMake(1, 1);
    
    shadowView.layer.shadowOpacity = 1;
    
    shadowView.layer.shadowRadius = 4;
    
    shadowView.layer.cornerRadius = 1;
    
    shadowView.clipsToBounds = NO;
    
    [shadowView addSubview:_imgView];
    
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
