//
//  ViewController.m
//  模仿SegmentControl
//
//  Created by YinlongNie on 16/4/27.
//  Copyright © 2016年 Jiuzhekan. All rights reserved.
//

#import "ViewController.h"
#import "YJSegmentedControl.h"
@interface ViewController ()<YJSegmentedControlDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    YJSegmentedControl * segmentControl = [YJSegmentedControl segmentedControlFrame:CGRectMake(0, 22, self.view.frame.size.width, 44) titleDataSource:@[@"1111", @"2222", @"3333"] backgroundColor:[UIColor whiteColor] titleColor:[UIColor blackColor] titleFont:[UIFont systemFontOfSize:15] selectColor:[UIColor redColor] buttonDownColor:[UIColor redColor] Delegate:self];
    [self.view addSubview:segmentControl];
}


#pragma mark - YJSegmentedControlDelegate
-(void)segumentSelectionChange:(NSInteger)selection
{
    switch (selection) {
        case 0:
        {
            NSLog(@"点击 1");
        }
            break;
        case 1:
        {
            NSLog(@"点击 2");
        }
            break;
        case 2:
        {
            NSLog(@"点击 3");
        }
            break;
            
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
