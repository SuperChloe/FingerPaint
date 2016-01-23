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
        _points = [[NSMutableArray alloc] init];
        _penColor = [UIColor blueColor];
        _linesArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    for (Line *line in self.linesArray) {
        UIBezierPath *oldLine = [UIBezierPath bezierPath];
        UIColor *oldColor = line.lineColor;
        
        [oldColor setStroke];
        oldLine.lineWidth = 5.0;
        oldLine.lineCapStyle = kCGLineCapRound;
        
        [oldLine moveToPoint:line.startLine];
        
        for (NSValue *point in line.points) {
            [oldLine addLineToPoint:[point CGPointValue]];
        }
        
        [oldLine stroke];
    }

    [self.penColor setStroke];
    self.path.lineWidth = 5.0;
    self.path.lineCapStyle = kCGLineCapRound;
    [self.path stroke];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint touchLocation = [[touches anyObject] locationInView:self];
    self.path = [UIBezierPath bezierPath];
    [self.path moveToPoint:touchLocation];
    self.start = touchLocation;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint touchLocaton = [[touches anyObject] locationInView:self];
    
    [self.path addLineToPoint:touchLocaton];
    [self setNeedsDisplay];
    [self.points addObject:[NSValue valueWithCGPoint:touchLocaton]];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Line *line = [[Line alloc] init];
    line.lineColor = self.penColor;
    line.startLine = self.start;
    line.points = [NSMutableArray arrayWithArray:self.points];
    [self.linesArray addObject:line];
    [self setNeedsDisplay];
    [self.points removeAllObjects];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Line *line = [[Line alloc] init];
    line.lineColor = self.penColor;
    line.startLine = self.start;
    line.points = [NSMutableArray arrayWithArray:self.points];
    [self.linesArray addObject:line];
    [self setNeedsDisplay];
    [self.points removeAllObjects];
}


@end
