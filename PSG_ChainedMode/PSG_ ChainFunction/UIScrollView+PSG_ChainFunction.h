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
- (UIScrollView *(^)(CGPoint))g_contentOffset;
- (UIScrollView *(^)(CGSize))g_contentSize;
- (UIScrollView *(^)(UIEdgeInsets))g_contentInset;
- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior))g_contentInsetAdjustmentBehavior API_AVAILABLE(ios(11.0),tvos(11.0));

- (UIScrollView *(^)(id<UIScrollViewDelegate>))g_delegate;
- (UIScrollView *(^)(BOOL))g_directionalLockEnabled;
- (UIScrollView *(^)(BOOL))g_bounces;
- (UIScrollView *(^)(BOOL))g_alwaysBounceVertical;
- (UIScrollView *(^)(BOOL))g_alwaysBounceHorizontal;
- (UIScrollView *(^)(BOOL))g_pagingEnabled;
- (UIScrollView *(^)(BOOL))g_scrollEnabled;
- (UIScrollView *(^)(BOOL))g_showsHorizontalScrollIndicator;
- (UIScrollView *(^)(BOOL))g_showsVerticalScrollIndicator;
- (UIScrollView *(^)(UIEdgeInsets))g_scrollIndicatorInsets;
- (UIScrollView *(^)(UIScrollViewIndicatorStyle))g_indicatorStyle;
- (UIScrollView *(^)(CGFloat))g_decelerationRate;
- (UIScrollView *(^)(BOOL))g_delaysContentTouches;
- (UIScrollView *(^)(BOOL))g_canCancelContentTouches;
- (UIScrollView *(^)(CGFloat))g_minimumZoomScale;
- (UIScrollView *(^)(CGFloat))g_maximumZoomScale;
- (UIScrollView *(^)(CGFloat))g_zoomScale;
- (UIScrollView *(^)(BOOL))g_bouncesZoom;
- (UIScrollView *(^)(BOOL))g_scrollsToTop;
- (UIScrollView *(^)(UIScrollViewKeyboardDismissMode))g_keyboardDismissMode NS_AVAILABLE_IOS(7_0);
- (UIScrollView *(^)(UIRefreshControl *))g_refreshControl NS_AVAILABLE_IOS(10_0);

#pragma mark - subviews
- (UITextView *)g_textViewMaker;
- (UITableView *)g_tableViewMaker;
- (UICollectionView *)g_collevtionViewMaker;

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
