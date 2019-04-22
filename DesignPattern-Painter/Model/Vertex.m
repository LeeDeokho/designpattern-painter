//
//  Vertext.m
//  DesignPattern-Painter
//
//  Created by NHNEnt on 22/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex


@synthesize location = location_;
@dynamic color, size;

- (id)initWithLocation:(CGPoint)aLocation {
    if (self = [super init]) {
        [self setLocation:aLocation];
    }
    
    return self;
}

- (void)setColor:(UIColor *)color {
    
}

- (UIColor *)color {
    return nil;
}

- (void)setSize:(CGFloat)size {
    
}

- (CGFloat)size {
    return 0.0;
}


- (void)addMark:(id <Mark>)mark {
    
}

- (void)removeMark:(id <Mark>)mark {
    
}

- (id <Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}



#pragma mark - NSCopying method

- (id)copyWithZone:(nullable NSZone *)zone {
    Vertex *vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:location_];
    
    return vertexCopy;
}




@end
