//
//  UIImageView+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UIImageView+PSG_ChainFunction.h"

@implementation UIImageView (PSG_ChainFunction)

+ (UIImageView *)g_init {
    return [[UIImageView alloc] init];
}

- (UIView *)g_viewMaker {
    return (UIView *)self;
}

#pragma mark -

- (UIImageView *(^)(UIViewTintAdjustmentMode))g_tintAdjustmentMode {
    return ^(UIViewTintAdjustmentMode  tintAdjustmentMode) {
        self.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}

//UIConstraintBasedCompatibility
- (UIImageView *(^)(BOOL))g_translatesAutoresizingMaskIntoConstraints {
    return ^(BOOL  translatesAutoresizingMaskIntoConstraints) {
        self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints;
        return self;
    };
}

- (UIImageView *(^)(UIImage *))g_image {
    return ^(UIImage *image) {
        self.image = image;
        return self;
    };
}
- (UIImageView *(^)(UIImage *))g_highlightedImage {
    return ^(UIImage *highlightedImage) {
        self.highlightedImage = highlightedImage;
        return self;
    };
}
- (UIImageView *(^)(BOOL))g_userInteractionEnabled {
    return ^(BOOL userInteractionEnabled) {
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
- (UIImageView *(^)(BOOL))g_highlighted {
    return ^(BOOL highlighted) {
        self.highlighted = highlighted;
        return self;
    };
}
- (UIImageView *(^)(NSArray<UIImage *> *))g_animationImages {
    return ^(NSArray<UIImage *> * animationImages) {
        self.animationImages = animationImages;
        return self;
    };
}
- (UIImageView *(^)( NSArray<UIImage *> *))g_highlightedAnimationImages {
    return ^(NSArray<UIImage *> * highlightedAnimationImages) {
        self.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}
- (UIImageView *(^)(NSTimeInterval))g_animationDuration {
    return ^(NSTimeInterval animationDuration) {
        self.animationDuration = animationDuration;
        return self;
    };
}
- (UIImageView *(^)(NSInteger))g_animationRepeatCount {
    return ^(NSInteger animationRepeatCount) {
        self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}
- (UIImageView *(^)(UIColor *))g_tintColor {
    return ^(UIColor *tintColor) {
        self.tintColor = tintColor;
        return self;
    };
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

@end
