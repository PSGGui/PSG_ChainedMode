//
//  UIControl+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UIControl+PSG_ChainFunction.h"

@implementation UIControl (PSG_ChainFunction)

+ (UIControl *)g_init {
    return [[UIControl alloc] init];
}

- (UIView *)g_viewMaker {
    NSAssert([self isKindOfClass:[UIView class]], @"viewChain's target must be UIView class");
    return (UIView *)self;
}

- (UIControl *(^)(BOOL))g_enabled {
    return ^(BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}
- (UIControl *(^)(BOOL))g_selected {
    return ^(BOOL selected) {
        self.selected = selected;
        return self;
    };
}
- (UIControl *(^)(BOOL))g_highlighted {
    return ^(BOOL highlighed) {
        self.highlighted = highlighed;
        return self;
    };
}
- (UIControl *(^)(UIControlContentVerticalAlignment))g_contentVerticalAlignment {
    return ^(UIControlContentVerticalAlignment contentVerticalAlignment) {
        self.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}
- (UIControl *(^)(UIControlContentHorizontalAlignment))g_contentHorizontalAlignment {
    return ^(UIControlContentHorizontalAlignment alignment) {
        self.contentHorizontalAlignment = alignment;
        return self;
    };
}
- (UIControl *(^)(id, SEL, UIControlEvents))g_addTarget {
    return ^(id target, SEL action ,UIControlEvents event) {
        [self addTarget:target action:action forControlEvents:event];
        return self;
    };
}
- (UIControl *(^)(id, SEL, UIControlEvents))g_removeTarget {
    return ^(id target, SEL action ,UIControlEvents event) {
        [self removeTarget:target action:action forControlEvents:event];
        return self;
    };
}
- (UIControl *(^)(SEL, id, UIEvent *))g_sendActionTarget {
    return ^(SEL action, id target, UIEvent *event) {
        [self sendAction:action to:target forEvent:event];
        return self;
    };
}
- (UIControl *(^)(UIControlEvents))g_sendActionEvent {
    return ^(UIControlEvents event) {
        [self sendActionsForControlEvents:event];
        return self;
    };
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

#pragma mark - subviews

- (UIButton *)g_buttonMaker {
    NSAssert([self isKindOfClass:[UIButton class]], @"textFieldChain's target must be UIbutton class");
    return (UIButton *)self;
}
- (UITextField *)g_textFieldMaker {
    NSAssert([self isKindOfClass:[UITextField class]], @"textFieldChain's target must be UITextField class");
    return (UITextField *)self;
}

@end
