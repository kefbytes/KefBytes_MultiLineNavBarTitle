//
//  ViewController.m
//  MultiLineNavBarTitle
//
//  Created by Franks, Kent Eric on 8/26/16.
//  Copyright © 2016 KefBytes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self setNavBarTitle];
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    // shifting the tile up -20 to center vertically just to play with it, not necessary
//    [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:-20.0f forBarMetrics:UIBarMetricsDefault];
    
    // increasing size of nav bar, again may not be necessary
//    [self.navigationController.navigationBar setFrame:CGRectMake(0, 0, self.view.frame.size.width,100.0)];
    
}

- (void)setNavBarTitle {
    
    // create attributed string
    NSString *accountTitleString = @"Interest Checking \n XXXXXXXX1234";
    NSMutableAttributedString *attrTitleString = [[NSMutableAttributedString alloc] initWithString:accountTitleString];
    [attrTitleString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize: 22.0f] range:NSMakeRange(0, 17)];
    [attrTitleString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:17.0f] range:NSMakeRange(20, 12)];
    
    // create title label
    UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 480, 44)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.numberOfLines = 2;
    
    // set the title label to the attributed string
    titleLabel.attributedText = attrTitleString;
    [titleLabel sizeToFit];
    
    // set the label to the titleView of nav bar
    self.navigationItem.titleView = titleLabel;
    
}

@end
