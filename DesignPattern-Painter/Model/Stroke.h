//
//  Stroke.h
//  DesignPattern-Painter
//
//  Created by NHNEnt on 22/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface Stroke : NSObject <Mark, NSCopying>{
    @private
    UIColor *color_;
    CGFloat size_;
    

}

@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count; // 자식 개체의 수
@property (nonatomic, readonly) id <Mark> lastChild;


- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMarkAtIndex:(NSUInteger)index;
- (id)copyWithZone:(nullable NSZone *)zone;

@end

NS_ASSUME_NONNULL_END
