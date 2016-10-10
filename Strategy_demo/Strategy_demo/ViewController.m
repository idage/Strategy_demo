//
//  ViewController.m
//  Strategy_demo
//
//  Created by 冯亮 on 2016/10/10.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "ViewController.h"
#import "Attributelabel.h"
#import "AttributeTextInFront.h"
#import "AttributeTextInAfter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    AttributeLabel *frontLabel = [[AttributeLabel alloc]initWithFrame:CGRectMake(100, 50, 100, 30)];
    frontLabel.strategy = [AttributeTextInFront new];
    [self.view addSubview:frontLabel];
    if ([frontLabel setText:@"10.3" unitText:@"公里"]) {
        frontLabel.attributedText = frontLabel.strategy.attributeStr;
    }
    
    AttributeLabel *afterLabel = [[AttributeLabel alloc]initWithFrame:CGRectMake(100, 150, 100, 30)];
    afterLabel.strategy = [AttributeTextInAfter new];
    [self.view addSubview:afterLabel];
    if ([afterLabel setText:@"10'23\"" unitText:@"配速"]) {
        afterLabel.attributedText = afterLabel.strategy.attributeStr;
    }

    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
