//
//  Stroke.m
//  DesignPattern-Painter
//
//  Created by NHNEnt on 22/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "Stroke.h"

@interface Stroke ()
@property (nonatomic, strong)NSMutableArray<id <Mark>> *children;
@end

@implementation Stroke

@synthesize color=color_, size=size_;
@dynamic location;

- (instancetype)init {
    if (self = [super init]) {
        _children = [NSMutableArray arrayWithCapacity:5];
        
    }
    
    return self;
}

- (void)setLocation:(CGPoint)location {
    
}

- (CGPoint)location {
    if ([_children count] > 0) {
        [_children[0] location];
    }
    
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    } else {
        [_children makeObjectsPerformSelector:@selector(removeMark:)
                                   withObject:mark];
    }
}

- (id <Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index >= [_children count]) {
        return nil;
    }
    
    return [_children objectAtIndex:index];
}

- (id <Mark>)lastChild {
    return [_children lastObject];
}

- (NSUInteger)count {
    return [_children count];
}


- (id)copyWithZone:(nullable NSZone *)zone {
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    
    [strokeCopy setColor:[UIColor colorWithCGColor:[color_ CGColor]]];
    
    [strokeCopy setSize:size_];
    
    for (id <Mark>child in _children) {
//        id <Mark>childCopy = [child copy];
        [strokeCopy addMark:child];
    }
    
    return strokeCopy;
}

@end
