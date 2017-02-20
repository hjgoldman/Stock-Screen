//
//  StocksTableViewController.m
//  Stock Screen
//
//  Created by Hayden Goldman on 2/20/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "StocksTableViewController.h"

@interface StocksTableViewController ()

@end

@implementation StocksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    stocks = [NSMutableArray array];
    
    [stocks addObject:@"AAPL"];
    [stocks addObject:@"FB"];
    [stocks addObject:@"GOOG"];
    [stocks addObject:@"HAL"];
    [stocks addObject:@"ABTX"];
    [stocks addObject:@"YHOO"];
    [stocks addObject:@"NFLX"];
    [stocks addObject:@"CSCO"];

    
//    Stock *stock1 = [[Stock alloc]init];
//    stock1.title = @"AAPL";
//    stock1.detail = @"Apple";
//    
//    [stocks addObject:stock1];

    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return stocks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StockCell" forIndexPath:indexPath];
    cell.textLabel.text = stocks[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [self.delegate selectedStockName:cell.textLabel.text];
}




@end
