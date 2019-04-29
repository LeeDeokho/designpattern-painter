//
//  CanvasViewGenerator.h
//  DesignPattern-Painter
//
//  Created by NHNEnt on 29/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CanvasViewGenerator : NSObject

- (CanvasView *)canvasViewWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
