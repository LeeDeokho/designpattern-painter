//
//  PaperCanvasViewGenerator.m
//  DesignPattern-Painter
//
//  Created by NHNEnt on 29/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"

@implementation PaperCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[PaperCanvasView alloc] initWithFrame:frame];
}

@end
