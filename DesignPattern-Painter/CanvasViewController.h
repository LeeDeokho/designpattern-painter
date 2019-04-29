//
//  CanvasViewController.h
//  DesignPattern-Painter
//
//  Created by NHNEnt on 29/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CanvasViewController : UIViewController

@property (nonatomic, strong) CanvasView *canvasView;

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;

@end

NS_ASSUME_NONNULL_END
