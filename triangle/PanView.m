//
//  TouchView.m
//  triangle
//
//  Created by Kuo-HsunShih on 2016/6/29.
//  Copyright © 2016年 lova. All rights reserved.
//

#import "PanView.h"

@interface PanView ()

@property (strong, nonatomic) UIPanGestureRecognizer *pan;
@property (assign, nonatomic) CGPoint oldPoint;

@end

@implementation PanView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self addGestureRecognizer:self.pan];
}

- (void)didPan:(UIPanGestureRecognizer *)pan {
    if (pan.state == UIGestureRecognizerStateBegan) {
        self.oldPoint = [pan locationInView:self.superview];
    }else if (pan.state == UIGestureRecognizerStateChanged){
        CGPoint newPoint = [pan locationInView:self.superview];
        
        CGPoint center = self.center;
        
        center.x += newPoint.x - self.oldPoint.x;
        center.y += newPoint.y - self.oldPoint.y;
        
        self.center = center;
        
        self.oldPoint = center;
        
        if ([self.delegate respondsToSelector:@selector(panViewDidPan)]) {
            [self.delegate panViewDidPan];
        }
    }else if (pan.state == UIGestureRecognizerStateEnded){
        
    }
}

- (UIPanGestureRecognizer *)pan {
    if (!_pan) {
        _pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(didPan:)];
    }
    
    return _pan;
}

@end
