//
//  Dot.m
//  DesignPattern-Painter
//
//  Created by NHNEnt on 22/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "Dot.h"

@implementation Dot

@synthesize size=size_, color=color_;


//- (void)dealloc {
//    [color_ release];
//    [super dealloc];
//}

#pragma mark - NSCopying delegate method

- (id)copyWithZone:(NSZone *)zone {
    
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:location_];
    
    [dotCopy setColor:[UIColor colorWithCGColor:[color_ CGColor]]];
    
    [dotCopy setSize:size_];
    
    return dotCopy;
}



@end
