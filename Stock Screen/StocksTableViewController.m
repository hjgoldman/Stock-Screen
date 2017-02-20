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

    Stock *stock1 = [[Stock alloc]init];
    stock1.title = @"AAPL";
    stock1.detail = @"Apple Inc.";
    
    Stock *stock2 = [[Stock alloc]init];
    stock2.title = @"FB";
    stock2.detail = @"Facebook, Inc.";
    
    Stock *stock3 = [[Stock alloc]init];
    stock3.title = @"GOOG";
    stock3.detail = @"Alphabet Inc.";
    
    Stock *stock4 = [[Stock alloc]init];
    stock4.title = @"TWTR";
    stock4.detail = @"Twitter, Inc.";
    
    Stock *stock5 = [[Stock alloc]init];
    stock5.title = @"NFLX";
    stock5.detail = @"Netflix, Inc.";
    
    Stock *stock6 = [[Stock alloc]init];
    stock6.title = @"CSCO";
    stock6.detail = @"Cisco Systems, Inc.";
    
    Stock *stock7 = [[Stock alloc]init];
    stock7.title = @"YHOO";
    stock7.detail = @"Yahoo! Inc.";
    
    [stocks addObject:stock1];
    [stocks addObject:stock2];
    [stocks addObject:stock3];
    [stocks addObject:stock4];
    [stocks addObject:stock5];
    [stocks addObject:stock6];
    [stocks addObject:stock7];

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
    
    Stock *stock = stocks[indexPath.row];
    cell.textLabel.text = stock.title;
    cell.detailTextLabel.text = stock.detail;
    cell.detailTextLabel.alpha = 0;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    [self.delegate selectedStockName:cell.detailTextLabel.text];
}




@end
