//
//  TouchView.h
//  triangle
//
//  Created by Kuo-HsunShih on 2016/6/29.
//  Copyright © 2016年 lova. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PanViewDelegate;


@interface PanView : UIView

@property (weak,nonatomic) id<PanViewDelegate> delegate;

@end


@protocol PanViewDelegate <NSObject>
@optional
-(void)panViewDidPan;

@end
