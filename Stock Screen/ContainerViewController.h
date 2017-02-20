//
//  ContainerViewController.h
//  Stock Screen
//
//  Created by Hayden Goldman on 2/20/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StocksTableViewController.h"
#import "DetailsViewController.h"

@interface ContainerViewController : UIViewController

@property (nonatomic, strong) StocksTableViewController *stockTableVC;
@property (nonatomic, strong) DetailsViewController *detailsVC;

@end
