//
//  DrawView.m
//  triangle
//
//  Created by Kuo-HsunShih on 2016/6/29.
//  Copyright © 2016年 lova. All rights reserved.
//

#import "DrawView.h"

@interface DrawView ()

@property (assign,nonatomic) CGPoint point1;
@property (assign,nonatomic) CGPoint point2;
@property (assign,nonatomic) CGPoint point3;

@end


@implementation DrawView


-(void)drawTriangleWithPoint:(CGPoint)point1 point2:(CGPoint)point2 point3:(CGPoint)point3{
    
    self.point1 = point1;
    self.point2 = point2;
    self.point3 = point3;
    
    [self setNeedsDisplay];
}


-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    
    //// Polygon Drawing
    UIBezierPath* polygonPath = [UIBezierPath bezierPath];
    [polygonPath moveToPoint: self.point1];
    [polygonPath addLineToPoint: self.point2];
    [polygonPath addLineToPoint: self.point3];
    [polygonPath closePath];
    [UIColor.grayColor setFill];
    [polygonPath fill];
    
}


@end
