//
//  ConstituenciesViewController.h
//  TWFY
//
//  Created by Tim Duckett on 22/06/2011.
//  Copyright 2011 Charismatic Megafauna Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ConstituenciesViewController : UITableViewController {
    
    NSMutableArray *_constituenciesArray;
    
}

@property (nonatomic, retain) NSMutableArray *constituenciesArray;

@end
