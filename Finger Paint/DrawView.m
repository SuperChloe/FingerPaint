//
//  DrawView.m
//  Finger Paint
//
//  Created by Chloe on 2016-01-22.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "DrawView.h"
#import "Line.h"

@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _path = [UIBezierPath bezierPath];
        _pathsArray = [[NSMutableArray alloc] init];
        _penColor = [UIColor blueColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    for (Line *line in self.pathsArray) {
        line.linePath = [UIBezierPath bezierPath];
        [line.lineColor setStroke];
        [line.linePath stroke];
    }
    
    [self.penColor setStroke];
    self.path.lineWidth = 3.0;
    [self.path stroke];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self];
    
    [self.path moveToPoint:touchLocation];
//    [self.pointsArray addObject:[NSValue valueWithCGPoint:touchLocation]];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchLocaton = [touch locationInView:self];
    
    [self.path addLineToPoint:touchLocaton];
    [self setNeedsDisplay];
//    [self.pointsArray addObject:[NSValue valueWithCGPoint:touchLocaton]];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Line *line = [[Line alloc] init];
    line.linePath = self.path;
    line.lineColor = self.penColor;
    [self.pathsArray addObject:line];
    [self setNeedsDisplay];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Line *line = [[Line alloc] init];
    line.linePath = self.path;
    line.lineColor = self.penColor;
    [self.pathsArray addObject:line];
    [self setNeedsDisplay];
}


@end
