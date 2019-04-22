//
//  Dot.h
//  DesignPattern-Painter
//
//  Created by NHNEnt on 22/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertex.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dot : Vertex {
    @private
    UIColor *color_;
    CGFloat size_;
}

@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;

- (id) copyWithZone:(NSZone *)zone;



@end

NS_ASSUME_NONNULL_END
