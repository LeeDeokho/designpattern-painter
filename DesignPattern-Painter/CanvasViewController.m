//
//  CanvasViewController.m
//  DesignPattern-Painter
//
//  Created by NHNEnt on 29/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "CanvasViewController.h"

@interface CanvasViewController ()

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // CanvasViewGenerator의 팩토리 메서드를 사용해서 디폴트 CanvasView를 얻는다.
    
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    
    [self loadCanvasViewWithGenerator:defaultGenerator];
}

# pragma mark - Loading a CanvasView from a CanvasViewGenerator

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [self.canvasView removeFromSuperview];
    CGRect frame = CGRectMake(0, 0, 320, 436);
    CanvasView *canvasView = [generator canvasViewWithFrame:frame];
    self.canvasView = canvasView;
    [self.view addSubview:self.canvasView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
