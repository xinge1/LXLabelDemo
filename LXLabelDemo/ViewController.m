//
//  ViewController.m
//  LXLabelDemo
//
//  Created by 刘鑫 on 16/4/13.
//  Copyright © 2016年 liuxin. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+LXAdd.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *lab=[[UILabel alloc] init];
    lab.text=@"这是一款简单的UILabel扩展。支持修改字间距，行间距，设置关键字，下划线 ";
    //lab.backgroundColor=[UIColor lightGrayColor];
    lab.numberOfLines=0;
    lab.font=[UIFont systemFontOfSize:15];
    lab.characterSpace=4;//字间距
    lab.lineSpace=3;//行间距
    //关键字
    lab.keywords=@"的";
    lab.keywordsColor=[UIColor redColor];
    lab.keywordsFont=[UIFont systemFontOfSize:20];
    //下划线
    lab.underlineStr=@"基督哈哈";
    lab.underlineColor=[UIColor redColor];
    //计算label的宽高
    CGRect h =  [lab getLableHeightWithMaxWidth:160];
    lab.frame=CGRectMake(10, 100, h.size.width, h.size.height);
    [self.view addSubview:lab];
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
