//
//  LSIAgent.h
//  objectiveC
//
//  Created by conner on 7/21/20.
//  Copyright © 2020 conner. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;

@property NSString *coverName;
@property NSString *realName;
@property int accessLevel;
@property BOOL compromised;

@end

NS_ASSUME_NONNULL_END
