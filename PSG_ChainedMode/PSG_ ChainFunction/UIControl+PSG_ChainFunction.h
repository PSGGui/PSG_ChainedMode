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

- (UIControl *(^)(BOOL))g_enabled;
- (UIControl *(^)(BOOL))g_selected;
- (UIControl *(^)(BOOL))g_highlighted;
- (UIControl *(^)(UIControlContentVerticalAlignment))g_contentVerticalAlignment;
- (UIControl *(^)(UIControlContentHorizontalAlignment))g_contentHorizontalAlignment;
- (UIControl *(^)(id, SEL, UIControlEvents))g_addTarget;
- (UIControl *(^)(id, SEL, UIControlEvents))g_removeTarget;
- (UIControl *(^)(SEL, id, UIEvent *))g_sendActionTarget;
- (UIControl *(^)(UIControlEvents))g_sendActionEvent;

#pragma mark layer

- (CALayer *)g_layerMaker;

#pragma mark - subviews

- (UIButton *)g_buttonMaker;
- (UITextField *)g_textFieldMaker;

@end
