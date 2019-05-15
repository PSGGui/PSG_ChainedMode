//
//  NSObject+PSG_Customer_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/7.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface NSObject (PSG_Customer_ChainFunction)

@end

@interface UIView (PSG_Customer_ChainFunction)

- (UIView *(^)(NSUInteger numberOfTapsRequired, NSUInteger numberOfTouchesRequired, void(^subscribeNext)(UIGestureRecognizer *x)))g_tap_subscribeNext;
- (UIView *(^)(NSUInteger numberOfTapsRequired, NSUInteger numberOfTouchesRequired, CFTimeInterval minimumPressDuration, CGFloat allowableMovement, void(^subscribeNext)(UIGestureRecognizer *x)))g_longPress_subscribeNext;

- (UIView *(^)(void(^g_makeTransition)(UIView *view)))g_makeTransition;

@end

@interface UIButton (PSG_Customer_ChainFunction)

- (UIButton *(^)(UIControlEvents events, void(^block)(UIButton *button)))g_subscribeNext;

@end
