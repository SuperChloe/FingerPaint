//
//  Line.h
//  Finger Paint
//
//  Created by Chloe on 2016-01-23.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Line : NSObject

@property (nonatomic, strong) NSMutableArray *points;
@property (nonatomic, assign) CGPoint startLine;
@property (nonatomic, strong) UIColor *lineColor;

@end
