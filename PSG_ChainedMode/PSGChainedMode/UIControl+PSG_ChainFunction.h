//
//  UIControl+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (PSG_ChainFunction)

+ (UIControl *)g_init;

- (UIView *)g_viewMaker;

@property (nonatomic, copy, readonly) UIControl *(^g_enabled)(BOOL);
@property (nonatomic, copy, readonly) UIControl *(^g_selected)(BOOL);
@property (nonatomic, copy, readonly) UIControl *(^g_highlighted)(BOOL);
@property (nonatomic, copy, readonly) UIControl *(^g_contentVerticalAlignment)(UIControlContentVerticalAlignment);
@property (nonatomic, copy, readonly) UIControl *(^g_contentHorizontalAlignment)(UIControlContentHorizontalAlignment);
@property (nonatomic, copy, readonly) UIControl *(^g_addTarget)(id, SEL, UIControlEvents);
@property (nonatomic, copy, readonly) UIControl *(^g_removeTarget)(id, SEL, UIControlEvents);
@property (nonatomic, copy, readonly) UIControl *(^g_sendActionTarget)(SEL, id, UIEvent *);
@property (nonatomic, copy, readonly) UIControl *(^g_sendActionEvent)(UIControlEvents);

#pragma mark layer

- (CALayer *)g_layerMaker;

#pragma mark - subviews

- (UIButton *)g_buttonMaker;
- (UITextField *)g_textFieldMaker;

@end
