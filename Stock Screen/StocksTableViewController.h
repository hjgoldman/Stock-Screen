//
//  StocksTableViewController.h
//  Stock Screen
//
//  Created by Hayden Goldman on 2/20/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stock.h"

@protocol StockDelegate <NSObject>

-(void) selectedStockName:(NSString *) name;

@end

@interface StocksTableViewController : UITableViewController

{
    NSMutableArray *stocks;
}

@property (nonatomic,weak) id<StockDelegate> delegate;

@end
