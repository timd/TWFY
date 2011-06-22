//
//  LordsViewController.h
//  TWFY
//
//  Created by Tim Duckett on 22/06/2011.
//  Copyright 2011 Charismatic Megafauna Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LordsViewController : UITableViewController {
    
    NSMutableArray *_lordsArray;
    
}

@property (nonatomic, retain) NSMutableArray *lordsArray;

@end
