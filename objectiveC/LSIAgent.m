//
//  LSIAgent.m
//  objectiveC
//
//  Created by conner on 7/21/20.
//  Copyright © 2020 conner. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised {
    self = [super init];
    if (self) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = accessLevel;
        _compromised = compromised;
    }
    return self;
}

@end
