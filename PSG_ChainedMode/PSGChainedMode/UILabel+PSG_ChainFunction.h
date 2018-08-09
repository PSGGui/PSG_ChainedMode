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
- (UILabel *(^)(NSString *))g_text;
- (UILabel *(^)(UIFont *))g_font;
- (UILabel *(^)(UIColor *))g_textColor;
- (UILabel *(^)(UIColor *))g_shadowColor;
- (UILabel *(^)(CGSize))g_shadowOffset;
- (UILabel *(^)(NSTextAlignment))g_textAlignment;
- (UILabel *(^)(NSLineBreakMode))g_lineBreakMode;
- (UILabel *(^)(NSAttributedString *))g_attributedText;

- (UILabel *(^)(UIColor *))g_highlightedTextColor;
- (UILabel *(^)(BOOL))g_highlighted;
- (UILabel *(^)(BOOL))g_userInteractionEnabled;
- (UILabel *(^)(BOOL))g_enabled;
- (UILabel *(^)(NSInteger))g_numberOfLines;
- (UILabel *(^)(BOOL))g_adjustsFontSizeToFitWidth;
- (UILabel *(^)(UIBaselineAdjustment))g_baselineAdjustment;
- (UILabel *(^)(CGFloat))g_minimumScaleFactor NS_AVAILABLE_IOS(6_0);

- (UILabel *(^)(BOOL))g_allowsDefaultTighteningForTruncation NS_AVAILABLE_IOS(9_0);
- (UILabel *(^)(CGFloat))g_preferredMaxLayoutWidth NS_AVAILABLE_IOS(6_0);
- (UILabel *)g_sizeToFit;

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
