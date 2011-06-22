//
//  mp.h
//  twfy
//
//  Created by Tim Duckett on 22/06/2011.
//  Copyright 2011 Charismatic Megafauna Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MP : NSObject {
    
    NSInteger _memberId;
    NSInteger _personId;
    NSString *_firstName;
    NSString *_lastName;
    NSString *_party;
    NSString *_constituency;
    NSString *_url;
    NSString *imagePath;
    
}

@property (nonatomic) NSInteger memberId;
@property (nonatomic) NSInteger personId;
@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, retain) NSString *party;
@property (nonatomic, retain) NSString *constituency;
@property (nonatomic, retain) NSString *url;
@property (nonatomic, retain) NSString *imagePath;


@end
