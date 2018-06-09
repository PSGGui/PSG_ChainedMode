//
//  UIView+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UIView+PSG_ChainFunction.h"

@implementation UIView (PSG_ChainFunction)

#pragma mark - resize

+ (UIView *)g_init {
    return [[UIView alloc] init];
}

- (UIView *(^)(CGSize))g_size {
    return ^(CGSize g_size) {
        CGRect frame = self.frame;
        frame.size = g_size;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGPoint))g_origin {
    return ^(CGPoint g_origin) {
        CGRect frame = self.frame;
        frame.origin = g_origin;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))g_x {
    return ^(CGFloat g_x) {
        self.g_origin(CGPointMake(g_x, self.frame.origin.y));
        return self;
    };
}

- (UIView *(^)(CGFloat))g_y {
    return ^(CGFloat g_y) {
        self.g_origin(CGPointMake(self.frame.origin.x, g_y));
        return self;
    };
}

- (UIView *(^)(CGFloat))g_width {
    return ^(CGFloat g_width) {
        self.g_size(CGSizeMake(g_width, self.frame.size.height));
        return self;
    };
}

- (UIView *(^)(CGFloat))g_height {
    return ^(CGFloat g_height) {
        self.g_size(CGSizeMake(self.frame.size.width, g_height));
        return self;
    };
}

- (UIView *(^)(CGFloat))g_centerX {
    return ^(CGFloat g_centerX) {
        self.g_center(CGPointMake(g_centerX, self.center.y));
        return self;
    };
}

- (UIView *(^)(CGFloat))g_centerY {
    return ^(CGFloat g_centerY) {
        self.g_center(CGPointMake(self.center.x, g_centerY));
        return self;
    };
}

- (UIView *(^)(CGFloat))g_top {
    return ^(CGFloat g_top) {
        self.g_y(g_top);
        return self;
    };
}

- (UIView *(^)(CGFloat))g_left {
    return ^(CGFloat g_left) {
        self.g_x(g_left);
        return self;
    };
}

- (UIView *(^)(CGFloat))g_right {
    return ^(CGFloat g_right) {
        self.g_x(g_right - self.frame.size.width);
        return self;
    };
}

- (UIView *(^)(CGFloat))g_bottom {
    return ^(CGFloat g_bottom) {
        self.g_y(g_bottom - self.frame.size.height);
        return self;
    };
}

- (UIView *(^)(CGPoint position, CGPoint anchorPoint))g_setPositionAtAnchorPoint {
    return ^(CGPoint position, CGPoint anchorPoint) {
        CGFloat x = position.x - anchorPoint.x * self.frame.size.width;
        CGFloat y = position.y - anchorPoint.y * self.frame.size.height;
        self.g_origin(CGPointMake(x, y));
        return self;
    };
}

#pragma mark - attribute

- (UIView *(^)(NSInteger))g_tag {
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

//UIViewGeometry
- (UIView *(^)(CGRect))g_frame {
    return ^(CGRect frame) {
        self.frame = frame;
        return self;
    };
}
- (UIView *(^)(CGRect))g_bounds {
    return ^(CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}
- (UIView *(^)(CGPoint))g_center {
    return ^(CGPoint center) {
        self.center = center;
        return self;
    };
}
- (UIView *(^)(CGAffineTransform))g_transform {
    return ^(CGAffineTransform transform) {
        self.transform = transform;
        return self;
    };
}

- (UIView *(^)(CGFloat))g_contentScaleFactor {
    return ^(CGFloat contentScaleFactor) {
        self.contentScaleFactor = contentScaleFactor;
        return self;
    };
}
- (UIView *(^)(BOOL))g_multipleTouchEnabled {
    return ^(BOOL multipleTouchEnabled) {
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
- (UIView *(^)(BOOL))g_exclusiveTouch {
    return ^(BOOL exclusiveTouch) {
        self.exclusiveTouch = exclusiveTouch;
        return self;
    };
}
- (UIView *(^)(BOOL))g_autoresizesSubviews {
    return ^(BOOL autoresizesSubviews) {
        self.autoresizesSubviews = autoresizesSubviews;
        return self;
    };
}
- (UIView *(^)(UIViewAutoresizing))g_autoresizingMask {
    return ^(UIViewAutoresizing autoresizingMask) {
        self.autoresizingMask = autoresizingMask;
        return self;
    };
}

//UIViewHierarchy
- (UIView *(^)(UIEdgeInsets))g_layoutMargins {
    return ^(UIEdgeInsets layoutMargins) {
        self.layoutMargins = layoutMargins;
        return self;
    };
}
- (UIView *(^)(NSDirectionalEdgeInsets))g_directionalLayoutMargins {
    return ^(NSDirectionalEdgeInsets directionalLayoutMargins) {
        self.directionalLayoutMargins = directionalLayoutMargins;
        return self;
    };
}
- (UIView *(^)(BOOL))g_preservesSuperviewLayoutMargins {
    return ^(BOOL preservesSuperviewLayoutMargins) {
        self.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins;
        return self;
    };
}
- (UIView *(^)(BOOL))g_insetsLayoutMarginsFromSafeArea {
    return ^(BOOL insetsLayoutMarginsFromSafeArea) {
        self.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea;
        return self;
    };
}

//UIViewRendering
- (UIView *(^)(BOOL))g_clipsToBounds {
    return ^(BOOL clipsToBounds) {
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}
- (UIView *(^)(UIColor *))g_backgroundColor {
    return ^(UIColor * backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}
- (UIView *(^)(CGFloat))g_alpha {
    return ^(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}
- (UIView *(^)(BOOL))g_opaque {
    return ^(BOOL opaque) {
        self.opaque = opaque;
        return self;
    };
}
- (UIView *(^)(BOOL))g_clearsContextBeforeDrawing {
    return ^(BOOL clearsContextBeforeDrawing) {
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (UIView *(^)(BOOL))g_hidden {
    return ^(BOOL hidden) {
        self.hidden = hidden;
        return self;
    };
}
- (UIView *(^)(UIViewContentMode))g_contentMode {
    return ^(UIViewContentMode contentMode) {
        self.contentMode = contentMode;
        return self;
    };
}
- (UIView *(^)(UIView *))g_maskView {
    return ^(UIView * maskView) {
        self.maskView = maskView;
        return self;
    };
}
- (UIView *(^)(UIColor *))g_tintColor {
    return ^(UIColor * tintColor) {
        self.tintColor = tintColor;
        return self;
    };
}
- (UIView *(^)(UIViewTintAdjustmentMode))g_tintAdjustmentMode {
    return ^(UIViewTintAdjustmentMode  tintAdjustmentMode) {
        self.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}

//UIConstraintBasedCompatibility
- (UIView *(^)(BOOL))g_translatesAutoresizingMaskIntoConstraints {
    return ^(BOOL  translatesAutoresizingMaskIntoConstraints) {
        self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints;
        return self;
    };
}

//
- (UIView *(^)(UIView *))g_addSubview {
    return ^(UIView *subview) {
        [self addSubview:subview];
        return self;
    };
}
- (UIView *(^)(UIView *))g_addToSuperView {
    return ^(UIView *superView) {
        [superView addSubview:self];
        return self;
    };
}
#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

#pragma mark - subviews
- (UILabel *)g_labelMaker {
    NSAssert([self isKindOfClass:[UILabel class]], @"labelChain's target must be UILabel class");
    return (UILabel *)self;
}
- (UIButton *)g_buttonMaker {
    NSAssert([self isKindOfClass:[UIButton class]], @"buttonChain's target must be UIButton class");
    return (UIButton *)self;
}
- (UIImageView *)g_imageViewMaker {
    NSAssert([self isKindOfClass:[UIImageView class]], @"imageViewChain's target must be UIImageView class");
    return (UIImageView *)self;
}
- (UITextField *)g_textFieldMaker {
    NSAssert([self isKindOfClass:[UITextField class]], @"textFieldChain's target must be UITextField class");
    return (UITextField *)self;
}
- (UITextView *)g_textViewMaker {
    NSAssert([self isKindOfClass:[UITextView class]], @"textViewChain's target must be UITextView class");
    return (UITextView *)self;
}
- (UIScrollView *)g_scrollViewMaker {
    NSAssert([self isKindOfClass:[UIScrollView class]], @"scrollViewChain's target must be UIScrollView class");
    return (UIScrollView *)self;
}
- (UITableView *)g_tableViewMaker {
    NSAssert([self isKindOfClass:[UITableView class]], @"tableViewChain's target must be UITableView class");
    return (UITableView *)self;
}

- (UIControl *)g_controlMaker {
    NSAssert([self isKindOfClass:[UIControl class]], @"controlChain's target must be UIControl class");
    return (UIControl *)self;
}

- (UICollectionView *)g_collectionViewMaker {
    NSAssert([self isKindOfClass:[UICollectionView class]], @"collectionViewChain's target must be UICollectionView class");
    return (UICollectionView *)self;
}

@end
