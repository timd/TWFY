//
//  TWFYAppDelegate.m
//  TWFY
//
//  Created by Tim Duckett on 22/06/2011.
//  Copyright 2011 Charismatic Megafauna Ltd. All rights reserved.
//

#import "TWFYAppDelegate.h"
#import "MPsViewController.h"
#import "LordsViewController.h"
#import "ConstituenciesViewController.h"
#import "SettingViewController.h"

#import "MP.h"
#import "Lord.h"
#import "Constituency.h"

@implementation TWFYAppDelegate


@synthesize window=_window;

-(NSMutableArray *)createDummyMpData {
    
    // Create dummy MP data
    NSMutableArray *tempArray = [[[NSMutableArray alloc] init] autorelease];
    
    for (int i=1; i <=10; i++) {
        MP *tempMP = [[[MP alloc] init] autorelease];
        
        tempMP.memberId = i;
        tempMP.personId = i;
        tempMP.firstName = [NSString stringWithFormat:@"Firstname%d", i];
        tempMP.lastName = [NSString stringWithFormat:@"Lastname%d", i];;
        tempMP.constituency = [NSString stringWithFormat:@"Constituency%d", i];
        tempMP.url = [NSString stringWithFormat:@"URL%d", i];
        tempMP.imagePath = [NSString stringWithFormat:@"image%d.jpg", i];
        
        if ( (i % 2) == 0 ) {
            tempMP.party = @"Conservative";
        } else {
            tempMP.party = @"Labour";
        }
        
        [tempArray addObject:tempMP];
        
    }
    
    return tempArray;
    
}

-(NSMutableArray *)createDummyLordData {
    
    // Create dummy MP data
    NSMutableArray *tempArray = [[[NSMutableArray alloc] init] autorelease];
    
    for (int i=1; i <=5; i++) {
        Lord *tempLord = [[[Lord alloc] init] autorelease];
        
        tempLord.memberId = i+50;
        tempLord.personId = i+50;
        tempLord.firstName = [NSString stringWithFormat:@"Firstname%d", i+50];
        tempLord.lastName = [NSString stringWithFormat:@"Lastname%d", i+50];
        tempLord.lordName = [NSString stringWithFormat:@"Lastname%d", i+50];;
        
        if ( (i % 2) == 0 ) {
            tempLord.party = @"Conservative";
        } else {
            tempLord.party = @"Labour";
        }
        
        [tempArray addObject:tempLord];
        
    }
    
    return tempArray;
    
}

-(NSMutableArray *)createDummyConstData {
    
    NSMutableArray *tempArray = [[[NSMutableArray alloc] init] autorelease];
    
    for (int i=1; i <=10; i++) {
        
        Constituency *tempConst = [[[Constituency alloc] init] autorelease];
        
        tempConst.name = [NSString stringWithFormat:@"Constituency%d", i];
        
        [tempArray addObject:tempConst];
    }
    
    return tempArray;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    MPsViewController *mpVC = [[MPsViewController alloc] init];
    [mpVC setMpsArray:[self createDummyMpData]];
    
    LordsViewController *lordsVC = [[LordsViewController alloc] init];
    [lordsVC setLordsArray:[self createDummyLordData]];
    
    ConstituenciesViewController *constVC = [[ConstituenciesViewController alloc] init];
    [constVC setConstituenciesArray:[self createDummyConstData]];
    
    SettingViewController *settingsVC = [[SettingViewController alloc] init];
    
    NSArray *viewControllers = [[NSArray alloc] initWithObjects:mpVC, lordsVC, constVC, settingsVC, nil];
    
    [mpVC release];
    [lordsVC release];
    [constVC release];
    [settingsVC release];
    
    [tabBarController setViewControllers:viewControllers];
    
    [self.window setRootViewController:tabBarController];
    [tabBarController release];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
