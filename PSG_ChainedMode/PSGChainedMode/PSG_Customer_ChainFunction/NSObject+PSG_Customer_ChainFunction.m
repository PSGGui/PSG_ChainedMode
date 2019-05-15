//
//  NSObject+PSG_Customer_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/7.
//  Copyright © 2018年 G. All rights reserved.
//

#import "NSObject+PSG_Customer_ChainFunction.h"
#import <ReactiveObjC/ReactiveObjC.h>

@implementation NSObject (PSG_Customer_ChainFunction)

@end

@implementation UIView (PSG_Customer_ChainFunction)

- (UIView *(^)(NSUInteger numberOfTapsRequired, NSUInteger numberOfTouchesRequired, void(^subscribeNext)(UIGestureRecognizer *x)))g_tap_subscribeNext {
    return ^(NSUInteger numberOfTapsRequired, NSUInteger numberOfTouchesRequired, void(^subscribeNext)(UIGestureRecognizer *x)) {
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
        tap.numberOfTapsRequired = numberOfTapsRequired;
        tap.numberOfTouchesRequired = numberOfTouchesRequired;
        [tap.rac_gestureSignal subscribeNext:^(__kindof UIGestureRecognizer * _Nullable x) {
            if (subscribeNext) subscribeNext(x);
        }];
        [self addGestureRecognizer:tap];
        return self;
    };
}

- (UIView *(^)(NSUInteger numberOfTapsRequired, NSUInteger numberOfTouchesRequired, CFTimeInterval minimumPressDuration, CGFloat allowableMovement, void(^subscribeNext)(UIGestureRecognizer *x)))g_longPress_subscribeNext {
    return ^(NSUInteger numberOfTapsRequired, NSUInteger numberOfTouchesRequired, CFTimeInterval minimumPressDuration, CGFloat allowableMovement, void(^subscribeNext)(UIGestureRecognizer *x)) {
        UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] init];
        longPress.numberOfTapsRequired = numberOfTapsRequired;
        longPress.numberOfTouchesRequired = numberOfTouchesRequired;
        longPress.minimumPressDuration = minimumPressDuration;
        longPress.allowableMovement = allowableMovement;
        [longPress.rac_gestureSignal subscribeNext:^(__kindof UIGestureRecognizer * _Nullable x) {
            if (subscribeNext) subscribeNext(x);
        }];
        return self;
    };
}

- (UIView *(^)(void(^g_makeTransition)(UIView *view)))g_makeTransition {
    return ^(void(^g_makeTransition)(UIView *view)) {
        return self;
    };
}

@end

@implementation UIButton (PSG_Customer_ChainFunction)

- (UIButton *(^)(UIControlEvents events, void(^block)(UIButton *button)))g_subscribeNext {
    return ^(UIControlEvents events, void(^block)(UIButton *button)) {
        [[self rac_signalForControlEvents:events] subscribeNext:^(__kindof UIControl * _Nullable x) {
            if (block) block(x);
        }];
        return self;
    };
}

@end
