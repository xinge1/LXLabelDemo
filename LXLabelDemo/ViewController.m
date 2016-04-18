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
    lab.text=@"一款简单的UILabel。支持修改字间距，行间距，设置关键字，下划线，自动计算宽高并返回";
    //lab.backgroundColor=[UIColor lightGrayColor];
    lab.numberOfLines=0;
    lab.font=[UIFont systemFontOfSize:15];
    lab.textAlignment=NSTextAlignmentCenter;
    
    lab.characterSpace=6;//字间距
    lab.lineSpace=5;//行间距
    //关键字
    lab.keywords=@"关键字";
    lab.keywordsColor=[UIColor redColor];
    lab.keywordsFont=[UIFont systemFontOfSize:20];
    //下划线
    lab.underlineStr=@"下划线";
    lab.underlineColor=[UIColor redColor];
    //计算label的宽高
    CGSize labSize =  [lab getLableSizeWithMaxWidth:300];
    lab.frame=CGRectMake(40, 100, labSize.width, labSize.height);
    [self.view addSubview:lab];
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
