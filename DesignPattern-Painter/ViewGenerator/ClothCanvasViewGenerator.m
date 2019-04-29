//
//  ClothCanvasViewGenerator.m
//  DesignPattern-Painter
//
//  Created by NHNEnt on 29/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"

@implementation ClothCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[ClothCanvasView alloc] initWithFrame:frame];
}

@end
