//
//  UILabel+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (PSG_ChainFunction)

+ (UILabel *)g_init;

#pragma mark - view

- (UIView *)g_viewMaker;

#pragma mark - label
@property (nonatomic, copy, readonly) UILabel *(^g_text)(NSString *);
@property (nonatomic, copy, readonly) UILabel *(^g_font)(UIFont *);
@property (nonatomic, copy, readonly) UILabel *(^g_textColor)(UIColor *);
@property (nonatomic, copy, readonly) UILabel *(^g_shadowColor)(UIColor *);
@property (nonatomic, copy, readonly) UILabel *(^g_shadowOffset)(CGSize);
@property (nonatomic, copy, readonly) UILabel *(^g_textAlignment)(NSTextAlignment);
@property (nonatomic, copy, readonly) UILabel *(^g_lineBreakMode)(NSLineBreakMode);
@property (nonatomic, copy, readonly) UILabel *(^g_attributedText)(NSAttributedString *);

@property (nonatomic, copy, readonly) UILabel *(^g_highlightedTextColor)(UIColor *);
@property (nonatomic, copy, readonly) UILabel *(^g_highlighted)(BOOL);
@property (nonatomic, copy, readonly) UILabel *(^g_userInteractionEnabled)(BOOL);
@property (nonatomic, copy, readonly) UILabel *(^g_enabled)(BOOL);
@property (nonatomic, copy, readonly) UILabel *(^g_numberOfLines)(NSInteger);
@property (nonatomic, copy, readonly) UILabel *(^g_adjustsFontSizeToFitWidth)(BOOL);
@property (nonatomic, copy, readonly) UILabel *(^g_baselineAdjustment)(UIBaselineAdjustment);
@property (nonatomic, copy, readonly) UILabel *(^g_minimumScaleFactor)(CGFloat) NS_AVAILABLE_IOS(6_0);

@property (nonatomic, copy, readonly) UILabel *(^g_allowsDefaultTighteningForTruncation)(BOOL) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) UILabel *(^g_preferredMaxLayoutWidth)(CGFloat) NS_AVAILABLE_IOS(6_0);
- (UILabel *)g_sizeToFit;

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
