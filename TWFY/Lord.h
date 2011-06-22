//
//  lord.h
//  twfy
//
//  Created by Tim Duckett on 22/06/2011.
//  Copyright 2011 Charismatic Megafauna Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Lord : NSObject {
    
    NSInteger _memberId;
    NSInteger _personId;
    NSString *_firstName;
    NSString *_lastName;
    NSString *_lordName;
    NSString *_party;
    
}

@property (nonatomic) NSInteger memberId;
@property (nonatomic) NSInteger personId;
@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, retain) NSString *lordName;
@property (nonatomic, retain) NSString *party;


@end
