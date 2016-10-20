//
//  YJSegmentedControl.h
//  YJButtonLine
//
//  Created by houdage on 15/11/13.
//  Copyright © 2015年 houdage. All rights reserved.
//

#import <UIKit/UIKit.h>

// 定义选择代理
@protocol YJSegmentedControlDelegate < NSObject>

@optional

-(void)segumentSelectionChange:(NSInteger)selection;

@end

@interface YJSegmentedControl : UIView

@property (nonatomic, strong) id <YJSegmentedControlDelegate> delegate;

@property (nonatomic, strong) NSMutableArray * btnTitleSource;
@property (strong, nonatomic) UIColor * titleColor;
@property (strong, nonatomic) UIColor * selectColor;
@property (strong, nonatomic) UIFont * titleFont;
@property (nonatomic, strong) UIColor * buttonDownColor;

+ (YJSegmentedControl *)segmentedControlFrame:(CGRect)frame titleDataSource:(NSArray *)titleDataSouece backgroundColor:(UIColor *)backgroundColor titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont selectColor:(UIColor *)selectColor buttonDownColor:(UIColor *)buttonDownColor Delegate:(id)delegate;

@end
