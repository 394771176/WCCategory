//
//  WCViewController.m
//  WCCategory
//
//  Created by 394771176 on 09/27/2019.
//  Copyright (c) 2019 394771176. All rights reserved.
//

#import "WCViewController.h"
//#import "WCCategory.h"
//#import <Pods_WCCategory_Example/WCCategory.h>
#import <WCCategory/WCCategory.h>

@interface WCViewController () {
    id vv;
}

@end

@implementation WCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *v = UIView.new;
    v.left = 100;
    v.top = 100;
    v.width = 100;
    v.height = 100;
    v.backgroundColor = [UIColor colorWithString:@"ff2345"];
    [self.view addSubview:v];
    
//    UICREATEView(UIView, 0, 0, 100, 100, 0, nil, self);
    
//    UIView *view = [UIView Create:RECT(0, 0, 0, 0) autoResizing:0 bgColor:nil addToView:self];
    
    UICREATEViewTo(vv, UIView, 0, 0, 0, 0, AAL, @"", self);
    
    UICREATEImageTo(vv, UIImageView, 0, 0, 0, 0, AAL, CCCenter, nil, self);
    
//    UICREATELabelTo(vv, UILabel, 0, 0, 0, 0, AAL, nil, TTLeft, nil, nil, self);
    
    UICREATEControlTo(vv, UIControl, 0, 0, 0, 0, AAL, self, nil, self);
    
    UICREATEBtnImgTo(vv, UIButton, 0, 0, 0, 0, AALRTB, nil, self, nil, self);
    
//    UICREATEBtnTxtTo(vv, UIButton, 0, 0, 0, 0, AAL, nil, nil, nil, nil, nil, self);
    
//    NSString *str = @"";
//    str = str.md5Hash;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
