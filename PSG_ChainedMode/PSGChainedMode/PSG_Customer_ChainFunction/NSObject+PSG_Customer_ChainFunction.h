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

@property (nonatomic, copy, readonly) UIView *(^g_tap_subscribeNext)(NSUInteger numberOfTapsRequired, NSUInteger numberOfTouchesRequired, void(^subscribeNext)(UIGestureRecognizer *x));
@property (nonatomic, copy, readonly) UIView *(^g_longPress_subscribeNext)(NSUInteger numberOfTapsRequired, NSUInteger numberOfTouchesRequired, CFTimeInterval minimumPressDuration, CGFloat allowableMovement, void(^subscribeNext)(UIGestureRecognizer *x));

@property (nonatomic, copy, readonly) UIView *(^g_makeTransition)(void(^g_makeTransition)(UIView *view));

@end

@interface UIButton (PSG_Customer_ChainFunction)

@property (nonatomic, copy, readonly) UIButton *(^g_subscribeNext)(UIControlEvents events, void(^block)(UIButton *button));

@end
