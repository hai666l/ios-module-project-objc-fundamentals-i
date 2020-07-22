//
//  main.m
//  objectiveC
//
//  Created by conner on 7/21/20.
//  Copyright © 2020 conner. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* agents = [
            [NSArray alloc] initWithObjects:
            [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO],
            [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES],
            [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO],
            [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES],
            [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO],
            [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rahmes" accessLevel:4 compromised:NO],
            [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristen Scott Thomas" accessLevel:5 compromised:YES],
            [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO],
            [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkunaite" accessLevel:5 compromised:YES],
            [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES],
            [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO],
            nil
        ];
        
        // Determine amount of compromised agents
        int amountCompromised = 0;
        for(LSIAgent* agent in agents) {
            if(agent.compromised == YES)
                amountCompromised++;
        }
        NSLog(@"%d agents have been compromised", amountCompromised);
        
        
    }
    return 0;
}
