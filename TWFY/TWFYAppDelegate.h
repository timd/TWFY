//
//  TWFYAppDelegate.h
//  TWFY
//
//  Created by Tim Duckett on 22/06/2011.
//  Copyright 2011 Charismatic Megafauna Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWFYAppDelegate : NSObject <UIApplicationDelegate> {
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

-(NSMutableArray *)createDummyMpData;
-(NSMutableArray *)createDummyLordData;
-(NSMutableArray *)createDummyConstData;


@end
