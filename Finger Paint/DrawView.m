//
//  DrawView.m
//  Finger Paint
//
//  Created by Chloe on 2016-01-22.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (void)drawRect:(CGRect)rect {
    [[UIColor blackColor] setStroke];
    self.path.lineWidth = 3.0;
    [self.path stroke];
}

- (IBAction)drawLine:(UIPanGestureRecognizer *)sender {
    
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
