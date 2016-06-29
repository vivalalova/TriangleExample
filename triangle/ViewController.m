//
//  ViewController.m
//  triangle
//
//  Created by Kuo-HsunShih on 2016/6/29.
//  Copyright © 2016年 lova. All rights reserved.
//

#import "ViewController.h"
#import "PanView.h"
#import "DrawView.h"
@interface ViewController () <PanViewDelegate>

@property (weak, nonatomic) IBOutlet PanView *panView1;
@property (weak, nonatomic) IBOutlet PanView *panView2;
@property (weak, nonatomic) IBOutlet PanView *panView3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.panView1.delegate = self;
    self.panView2.delegate = self;
    self.panView3.delegate = self;
    
    [self panViewDidPan];
}

- (void)panViewDidPan {
    [self.view setNeedsDisplay];
    
    DrawView *view = (DrawView *)self.view;
    
    [view drawTriangleWithPoint:self.panView1.center
                         point2:self.panView2.center
                         point3:self.panView3.center];
}

@end
