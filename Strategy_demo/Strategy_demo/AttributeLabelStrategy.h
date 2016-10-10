//
//  AttributeLabelStrategy.h
//  Strategy_demo
//
//  Created by 冯亮 on 2016/10/10.
//  Copyright © 2016年 idage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AttributeLabelStrategy : NSObject
//属性字符串
@property(nonatomic,copy)NSMutableAttributedString* attributeStr;

/**
 *  策略的输入
 *
 *  @param
 *
 *  @return 如果为YES,表示测试通过,如果为NO,表示测试不通过
 */
-(BOOL)strategyText:(NSString *)text unitText:(NSString *)unitText;

@end
