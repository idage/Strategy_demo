//
//  Attributelabel.m
//  Strategy_demo
//
//  Created by 冯亮 on 2016/10/10.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "AttributeLabel.h"
#import "AttributeLabelStrategy.h"
@implementation AttributeLabel


-(BOOL)setText:(NSString *)text unitText:(NSString *)unitText{

   return  [self.strategy strategyText:text unitText:unitText];

}



@end
