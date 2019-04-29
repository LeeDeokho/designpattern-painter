//
//  PaperCanvasView.m
//  DesignPattern-Painter
//
//  Created by NHNEnt on 29/04/2019.
//  Copyright © 2019 NHNEnt. All rights reserved.
//

#import "PaperCanvasView.h"

@implementation PaperCanvasView

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // 캔버스 배경으로
        // 용지 형태의 텍스쳐 이미지 뷰를 추가한다.
        UIImage *backgroundImage = [UIImage imageNamed:@"paper"];
        UIImageView *backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
        [self addSubview:backgroundView];
    }
    
    return self;
}

@end
