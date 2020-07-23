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
        // Variables
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
        int compromised = 0, clean = 0, low = 0, mid = 0, high = 0;
        
        for(LSIAgent* agent in agents) {
            // Determine access level
            if(agent.accessLevel <= 4)
                low++;
            else if (agent.accessLevel >= 8)
                high++;
            else
                mid++;
            
            // Determine if compromised or clean
            if(agent.compromised) {
                if(agent.accessLevel >= 8)
                    NSLog(@"%@, level: %d **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel);
                compromised++;
            } else {
                NSLog(@"%@ is clean", agent.coverName);
                clean++;
            }
        }
        
        // Print results
        NSLog(@"%d agents are clean", clean);
        NSLog(@"%d agents have been compromised", compromised);
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", low, mid, high);
        
        // Step 7 (Optional)
        for(int level=4;level<11;level++)
            for(LSIAgent* agent in agents)
                if(agent.accessLevel == level)
                    NSLog(@"%@, level: %d", agent.coverName, agent.accessLevel);
    }
    return 0;
}
