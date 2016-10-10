//
//  AttributeTextInAfter.m
//  Strategy_demo
//
//  Created by 冯亮 on 2016/10/10.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "AttributeTextInAfter.h"
#import <UIKit/UIKit.h>
@implementation AttributeTextInAfter
-(BOOL)strategyText:(NSString *)text unitText:(NSString *)unitText{
    
    if (!text.length  && !unitText.length) {
        
        self.attributeStr = nil;
        
        return NO;
    }
    
    NSString  *str=[NSString stringWithFormat:@"%@%@",unitText,text];
    
    NSInteger length=text.length;
    
    NSMutableAttributedString *AttributedStr=[[NSMutableAttributedString  alloc] initWithString:str];
    
    
    // 前面字符
    [AttributedStr addAttribute:NSFontAttributeName
     
                          value:[UIFont systemFontOfSize:10]
     
                          range:NSMakeRange(0, str.length-length)];
    
    
    [AttributedStr addAttribute:NSFontAttributeName
     
                          value:[UIFont systemFontOfSize:20]
     
                          range:NSMakeRange(str.length-length, length)];
    
    
    self.attributeStr = AttributedStr;
    
    return YES;
    
}


@end
