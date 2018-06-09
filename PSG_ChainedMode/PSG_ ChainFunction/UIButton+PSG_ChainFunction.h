//
//  UIButton+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (PSG_ChainFunction)

+ (UIButton *)g_init;

- (UIView *)g_viewMaker;
- (UIControl *)g_controlMaker;

#pragma mark - button

- (UIButton *(^)(UIEdgeInsets))g_contentEdgeInsets;
- (UIButton *(^)(UIEdgeInsets))g_titleEdgeInsets;
- (UIButton *(^)(BOOL))g_reversesTitleShadowWhenHighlighted;
- (UIButton *(^)(UIEdgeInsets))g_imageEdgeInsets;
- (UIButton *(^)(BOOL))g_adjustsImageWhenHighlighted;
- (UIButton *(^)(BOOL))g_adjustsImageWhenDisabled;
- (UIButton *(^)(BOOL))g_showsTouchWhenHighlighted;

- (UIButton *(^)(UIColor *, UIControlState))g_titleColor;
- (UIButton *(^)(NSString *, UIControlState))g_title;
- (UIButton *(^)(UIFont *))g_titleFont;
- (UIButton *(^)(UIImage *, UIControlState))g_image;
- (UIButton *(^)(UIImage *, UIControlState))g_backgroundImage;
- (UIButton *(^)(id, SEL,UIControlEvents))g_targetAction;

#pragma mark layer

- (CALayer *)g_layerMaker;

@end
