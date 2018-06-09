//
//  UIScrollView+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UIScrollView+PSG_ChainFunction.h"

@implementation UIScrollView (PSG_ChainFunction)

+ (UIScrollView *)g_init {
    return [[UIScrollView alloc] init];
}

- (UIView *)g_viewMaker {
    return (UIView *)self;
}

#pragma mark - scrollView
- (UIScrollView *(^)(CGPoint))g_contentOffset {
    return ^(CGPoint  contentOffset) {
        self.contentOffset = contentOffset;
        return self;
    };
}
- (UIScrollView *(^)(CGSize))g_contentSize {
    return ^(CGSize  contentSize) {
        self.contentSize = contentSize;
        return self;
    };
}
- (UIScrollView *(^)(UIEdgeInsets))g_contentInset {
    return ^(UIEdgeInsets  contentInset) {
        self.contentInset = contentInset;
        return self;
    };
}
- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior))g_contentInsetAdjustmentBehavior {
    return ^(UIScrollViewContentInsetAdjustmentBehavior  contentInsetAdjustmentBehavior) {
        self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior;
        return self;
    };
}

- (UIScrollView *(^)(id<UIScrollViewDelegate>))g_delegate {
    return ^(id<UIScrollViewDelegate>  delegate) {
        self.delegate = delegate;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_directionalLockEnabled {
    return ^(BOOL  directionalLockEnabled) {
        self.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_bounces {
    return ^(BOOL  bounces) {
        self.bounces = bounces;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_alwaysBounceVertical {
    return ^(BOOL  alwaysBounceVertical) {
        self.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_alwaysBounceHorizontal {
    return ^(BOOL  alwaysBounceHorizontal) {
        self.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_pagingEnabled {
    return ^(BOOL  pagingEnabled) {
        self.pagingEnabled = pagingEnabled;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_scrollEnabled {
    return ^(BOOL  scrollEnabled) {
        self.scrollEnabled = scrollEnabled;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_showsHorizontalScrollIndicator {
    return ^(BOOL  showsHorizontalScrollIndicator) {
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_showsVerticalScrollIndicator {
    return ^(BOOL  showsVerticalScrollIndicator) {
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}
- (UIScrollView *(^)(UIEdgeInsets))g_scrollIndicatorInsets {
    return ^(UIEdgeInsets  scrollIndicatorInsets) {
        self.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}
- (UIScrollView *(^)(UIScrollViewIndicatorStyle))g_indicatorStyle {
    return ^(UIScrollViewIndicatorStyle  indicatorStyle) {
        self.indicatorStyle = indicatorStyle;
        return self;
    };
}
- (UIScrollView *(^)(CGFloat))g_decelerationRate {
    return ^(CGFloat  decelerationRate) {
        self.decelerationRate = decelerationRate;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_delaysContentTouches {
    return ^(BOOL  delaysContentTouches) {
        self.delaysContentTouches = delaysContentTouches;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_canCancelContentTouches {
    return ^(BOOL  canCancelContentTouches) {
        self.canCancelContentTouches = canCancelContentTouches;
        return self;
    };
}
- (UIScrollView *(^)(CGFloat))g_minimumZoomScale {
    return ^(CGFloat  minimumZoomScale) {
        self.minimumZoomScale = minimumZoomScale;
        return self;
    };
}
- (UIScrollView *(^)(CGFloat))g_maximumZoomScale {
    return ^(CGFloat  maximumZoomScale) {
        self.maximumZoomScale = maximumZoomScale;
        return self;
    };
}
- (UIScrollView *(^)(CGFloat))g_zoomScale {
    return ^(CGFloat  zoomScale) {
        self.zoomScale = zoomScale;
        return self;
    };
}
- (UIScrollView *(^)(BOOL))g_bouncesZoom {
    return ^(BOOL  bouncesZoom) {
        self.bouncesZoom = bouncesZoom;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))g_scrollsToTop {
    return ^(BOOL  scrollsToTop) {
        self.scrollsToTop = scrollsToTop;
        return self;
    };
}
- (UIScrollView *(^)(UIScrollViewKeyboardDismissMode))g_keyboardDismissMode {
    return ^(UIScrollViewKeyboardDismissMode  keyboardDismissMode) {
        self.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}
- (UIScrollView *(^)(UIRefreshControl *))g_refreshControl {
    return ^(UIRefreshControl * refreshControl) {
        self.refreshControl = refreshControl;
        return self;
    };
}

#pragma mark - subviews
- (UITextView *)g_textViewMaker {
    NSAssert([self isKindOfClass:[UITextView class]], @"textViewChain's target must be UITextView class");
    return (UITextView *)self;
}
- (UITableView *)g_tableViewMaker {
    NSAssert([self isKindOfClass:[UITableView class]], @"tableViewChain's target must be UITableView class");
    return (UITableView *)self;
}

- (UICollectionView *)g_collevtionViewMaker {
    NSAssert([self isKindOfClass:[UICollectionView class]], @"tableViewChain's target must be UITableView class");
    return (UICollectionView *)self;
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

@end
