//
//  UILabel+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UILabel+PSG_ChainFunction.h"

@implementation UILabel (PSG_ChainFunction)

+ (UILabel *)g_init {
    return [[UILabel alloc] init];
}

#pragma mark - view

- (UIView *)g_viewMaker {
    return (UIView *)self;
}

#pragma mark - label

- (UILabel *(^)(NSString *))g_text {
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}
- (UILabel *(^)(UIFont *))g_font {
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}
- (UILabel *(^)(UIColor *))g_textColor {
    return ^(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}
- (UILabel *(^)(UIColor *))g_shadowColor {
    return ^(UIColor *shadowColor) {
        self.shadowColor = shadowColor;
        return self;
    };
}
- (UILabel *(^)(CGSize))g_shadowOffset {
    return ^(CGSize shadowOffset) {
        self.shadowOffset = shadowOffset;
        return self;
    };
}
- (UILabel *(^)(NSTextAlignment))g_textAlignment {
    return ^(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}
- (UILabel *(^)(NSLineBreakMode))g_lineBreakMode {
    return ^(NSLineBreakMode lineBreakMode) {
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}
- (UILabel *(^)(NSAttributedString *))g_attributedText {
    return ^(NSAttributedString * attributedText) {
        self.attributedText = attributedText;
        return self;
    };
}

- (UILabel *(^)(UIColor *))g_highlightedTextColor {
    return ^(UIColor * highlightedTextColor) {
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}
- (UILabel *(^)(BOOL))g_highlighted {
    return ^(BOOL highlighted) {
        self.highlighted = highlighted;
        return self;
    };
}
- (UILabel *(^)(BOOL))g_userInteractionEnabled {
    return ^(BOOL userInteractionEnabled) {
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
- (UILabel *(^)(BOOL))g_enabled {
    return ^(BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}
- (UILabel *(^)(NSInteger))g_numberOfLines {
    return ^(NSInteger numberOfLines) {
        self.numberOfLines = numberOfLines;
        return self;
    };
}
- (UILabel *(^)(BOOL))g_adjustsFontSizeToFitWidth {
    return ^(BOOL adjustsFontSizeToFitWidth) {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}
- (UILabel *(^)(UIBaselineAdjustment))g_baselineAdjustment {
    return ^(UIBaselineAdjustment baselineAdjustment) {
        self.baselineAdjustment = baselineAdjustment;
        return self;
    };
}
- (UILabel *(^)(CGFloat))g_minimumScaleFactor{
    return ^(CGFloat minimumScaleFactor) {
        self.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}

- (UILabel *(^)(BOOL))g_allowsDefaultTighteningForTruncation {
    return ^(BOOL allowsDefaultTighteningForTruncation) {
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation;
        return self;
    };
}
- (UILabel *(^)(CGFloat))g_preferredMaxLayoutWidth {
    return ^(CGFloat preferredMaxLayoutWidth) {
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

- (UILabel *)g_sizeToFit {
    [self sizeToFit];
    return self;
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

@end
