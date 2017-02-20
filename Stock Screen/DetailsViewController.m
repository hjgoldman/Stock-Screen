//
//  DetailsViewController.m
//  Stock Screen
//
//  Created by Hayden Goldman on 2/20/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@property (nonatomic, weak) IBOutlet UILabel *stockNameLabel;


@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void) selectedStockName:(NSString *) name{
    self.stockNameLabel.text = name;
}

//-(void) selectedStockName:(NSObject *) name{
//    self.stockNameLabel.text = [NSString stringWithFormat:@"", name];
//    
//}


@end
