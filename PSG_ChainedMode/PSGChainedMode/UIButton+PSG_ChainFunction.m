//
//  UIButton+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UIButton+PSG_ChainFunction.h"

@implementation UIButton (PSG_ChainFunction)

+ (UIButton *)g_init {
    return [[UIButton alloc] init];
}

- (UIView *)g_viewMaker {
    return (UIView *)self;
}

- (UIControl *)g_controlMaker {
    return (UIControl *)self;
}

#pragma mark - button

- (UIButton *(^)(UIEdgeInsets))g_contentEdgeInsets {
    return ^(UIEdgeInsets contentEdgeInsets) {
        self.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}
- (UIButton *(^)(UIEdgeInsets))g_titleEdgeInsets {
    return ^(UIEdgeInsets titleEdgeInsets) {
        self.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}
- (UIButton *(^)(BOOL))g_reversesTitleShadowWhenHighlighted {
    return ^(BOOL reversesTitleShadowWhenHighlighted) {
        self.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}
- (UIButton *(^)(UIEdgeInsets))g_imageEdgeInsets {
    return ^(UIEdgeInsets imageEdgeInsets) {
        self.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}
- (UIButton *(^)(BOOL))g_adjustsImageWhenHighlighted {
    return ^(BOOL adjustsImageWhenHighlighted) {
        self.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}
- (UIButton *(^)(BOOL))g_adjustsImageWhenDisabled {
    return ^(BOOL adjustsImageWhenDisabled) {
        self.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}
- (UIButton *(^)(BOOL))g_showsTouchWhenHighlighted {
    return ^(BOOL showsTouchWhenHighlighted) {
        self.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}


- (UIButton *(^)(UIColor *, UIControlState))g_titleColor {
    return ^(UIColor *titleColor, UIControlState state) {
        [self setTitleColor:titleColor forState:state];
        return self;
    };
}
- (UIButton *(^)(NSString *, UIControlState))g_title {
    return ^(NSString *title, UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIFont *))g_titleFont {
    return ^(UIFont *font) {
        self.titleLabel.font = font;
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))g_image {
    return ^(UIImage *image, UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))g_backgroundImage {
    return ^(UIImage *image, UIControlState state) {
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(id, SEL, UIControlEvents))g_targetAction {
    return ^(id target, SEL action, UIControlEvents event) {
        [self addTarget:target action:action forControlEvents:event];
        return self;
    };
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

@end
