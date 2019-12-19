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

@property (nonatomic, copy, readonly) UIButton *(^g_contentEdgeInsets)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIButton *(^g_titleEdgeInsets)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIButton *(^g_reversesTitleShadowWhenHighlighted)(BOOL);
@property (nonatomic, copy, readonly) UIButton *(^g_imageEdgeInsets)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIButton *(^g_adjustsImageWhenHighlighted)(BOOL);
@property (nonatomic, copy, readonly) UIButton *(^g_adjustsImageWhenDisabled)(BOOL);
@property (nonatomic, copy, readonly) UIButton *(^g_showsTouchWhenHighlighted)(BOOL);

@property (nonatomic, copy, readonly) UIButton *(^g_titleColor)(UIColor *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^g_title)(NSString *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^g_titleFont)(UIFont *);
@property (nonatomic, copy, readonly) UIButton *(^g_image)(UIImage *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^g_backgroundImage)(UIImage *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^g_targetAction)(id, SEL,UIControlEvents);

#pragma mark layer

- (CALayer *)g_layerMaker;

@end
