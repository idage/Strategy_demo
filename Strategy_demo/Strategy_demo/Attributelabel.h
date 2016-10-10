//
//  Attributelabel.h
//  Strategy_demo
//
//  Created by 冯亮 on 2016/10/10.
//  Copyright © 2016年 idage. All rights reserved.

#import <UIKit/UIKit.h>
@class AttributeLabelStrategy;
@interface AttributeLabel : UILabel
/**
 *  抽象的策略
 */
@property(nonatomic,strong)AttributeLabelStrategy *strategy;

/**
 *  设置显示字符串
 *
 *  @param text  正文字符串
 *  @param unitText  单位字符串
 *
 *  @return 是否合法,合法,读取AttributeLabelStrategy当中的attributeStr
 */

-(BOOL)setText:(NSString *)text unitText:(NSString *)unitText;


@end
