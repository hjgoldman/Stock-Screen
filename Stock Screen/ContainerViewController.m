//
//  ContainerViewController.m
//  Stock Screen
//
//  Created by Hayden Goldman on 2/20/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *childViewControllers = self.childViewControllers;
    
    self.stockTableVC = (StocksTableViewController *) childViewControllers[0];
    self.detailsVC = (DetailsViewController *) childViewControllers[1];
    
    self.stockTableVC.delegate = self.detailsVC;
}



@end
