//
//  ViewController.m
//  Finger Paint
//
//  Created by Chloe on 2016-01-22.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIBezierPath *path;
@property (nonatomic, strong) NSMutableArray *pointsArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _path = [UIBezierPath bezierPath];
    _pointsArray = [[NSMutableArray alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drawRect:(CGRect)rect {
    [[UIColor blackColor] setStroke];
    self.path.lineWidth = 3.0;
    [self.path stroke];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.view];
    
    [self.path moveToPoint:touchLocation];
    [self.pointsArray addObject:[NSValue valueWithCGPoint:touchLocation]];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchLocaton = [touch locationInView:self.view];
    
    [self.path addLineToPoint:touchLocaton];
    [self.view setNeedsDisplay];
    [self.pointsArray addObject:[NSValue valueWithCGPoint:touchLocaton]];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.path closePath];
}


@end
