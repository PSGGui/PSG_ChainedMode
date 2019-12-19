//
//  UIScrollView+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (PSG_ChainFunction)

+ (UIScrollView *)g_init;

- (UIView *)g_viewMaker;

#pragma mark - scrollView
@property (nonatomic, copy, readonly) UIScrollView *(^g_contentOffset)(CGPoint);
@property (nonatomic, copy, readonly) UIScrollView *(^g_contentSize)(CGSize);
@property (nonatomic, copy, readonly) UIScrollView *(^g_contentInset)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIScrollView *(^g_contentInsetAdjustmentBehavior)(UIScrollViewContentInsetAdjustmentBehavior) API_AVAILABLE(ios(11.0),tvos(11.0));

@property (nonatomic, copy, readonly) UIScrollView *(^g_delegate)(id<UIScrollViewDelegate>);
@property (nonatomic, copy, readonly) UIScrollView *(^g_directionalLockEnabled)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_bounces)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_alwaysBounceVertical)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_alwaysBounceHorizontal)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_pagingEnabled)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_scrollEnabled)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_showsHorizontalScrollIndicator)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_showsVerticalScrollIndicator)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_scrollIndicatorInsets)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIScrollView *(^g_indicatorStyle)(UIScrollViewIndicatorStyle);
@property (nonatomic, copy, readonly) UIScrollView *(^g_decelerationRate)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^g_delaysContentTouches)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_canCancelContentTouches)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_minimumZoomScale)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^g_maximumZoomScale)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^g_zoomScale)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^g_bouncesZoom)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_scrollsToTop)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^g_keyboardDismissMode)(UIScrollViewKeyboardDismissMode) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) UIScrollView *(^g_refreshControl)(UIRefreshControl *) NS_AVAILABLE_IOS(10_0);

#pragma mark - subviews
- (UITextView *)g_textViewMaker;
- (UITableView *)g_tableViewMaker;
- (UICollectionView *)g_collevtionViewMaker;

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
