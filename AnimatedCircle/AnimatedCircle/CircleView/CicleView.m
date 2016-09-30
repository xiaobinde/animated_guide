//
//  CicleView.m
//  AnimatedCircle
//
//  Created by Ocean on 9/27/16.
//  Copyright © 2016 Ocean. All rights reserved.
//

#import "CicleView.h"

@implementation CicleView

+(Class)layerClass{
    return [CircleLayer class];
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.circleLayer = [CircleLayer layer];
        self.circleLayer.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        self.circleLayer.contentsScale = [UIScreen mainScreen].scale;
        [self.layer addSublayer:self.circleLayer];
    }
    return self;
}

@end
