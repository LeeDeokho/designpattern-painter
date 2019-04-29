//
//  CanvasViewGenerator.m
//  DesignPattern-Painter
//
//  Created by NHNEnt on 29/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "CanvasViewGenerator.h"

@implementation CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[CanvasView alloc] initWithFrame:frame];
}

@end
