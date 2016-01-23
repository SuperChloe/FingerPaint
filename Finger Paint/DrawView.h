//
//  DrawView.h
//  Finger Paint
//
//  Created by Chloe on 2016-01-22.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawView : UIView

@property (nonatomic, strong) UIBezierPath *path;
@property (nonatomic, strong) NSMutableArray *points;
@property (nonatomic, assign) CGPoint start;
@property (nonatomic, strong) UIColor *penColor;
@property (nonatomic, strong) NSMutableArray *linesArray;

@end
