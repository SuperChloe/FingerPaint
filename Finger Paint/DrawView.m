//
//  DrawView.m
//  Finger Paint
//
//  Created by Chloe on 2016-01-22.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _path = [UIBezierPath bezierPath];
        _pointsArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [[UIColor blackColor] setStroke];
    self.path.lineWidth = 1.0;
    [self.path stroke];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self];
    
    [self.path moveToPoint:touchLocation];
    [self.pointsArray addObject:[NSValue valueWithCGPoint:touchLocation]];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchLocaton = [touch locationInView:self];
    
    [self.path addLineToPoint:touchLocaton];
    [self setNeedsDisplay];
    [self.pointsArray addObject:[NSValue valueWithCGPoint:touchLocaton]];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.path closePath];
    [self setNeedsDisplay];
}


@end
