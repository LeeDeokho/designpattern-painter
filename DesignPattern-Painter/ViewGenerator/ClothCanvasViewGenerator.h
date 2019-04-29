//
//  ClothCanvasViewGenerator.h
//  DesignPattern-Painter
//
//  Created by NHNEnt on 29/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "ClothCanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClothCanvasViewGenerator : CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
