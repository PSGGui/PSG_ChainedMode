//
//  CALayer+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "CALayer+PSG_ChainFunction.h"

@implementation CALayer (PSG_ChainFunction)

+ (CALayer *)g_init {
    return [[CALayer alloc] init];
}

- (CALayer *(^)(CGRect))g_bounds {
    return ^(CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}
- (CALayer *(^)(CGPoint))g_position {
    return ^(CGPoint position) {
        self.position = position;
        return self;
    };
}
- (CALayer *(^)(CGFloat))g_zPosition {
    return ^(CGFloat zPosition) {
        self.zPosition = zPosition;
        return self;
    };
}
- (CALayer *(^)(CGPoint))g_anchorPoint {
    return ^(CGPoint anchorPoint) {
        self.anchorPoint = anchorPoint;
        return self;
    };
}
- (CALayer *(^)(CGFloat))g_anchorPointZ {
    return ^(CGFloat anchorPointZ) {
        self.anchorPointZ = anchorPointZ;
        return self;
    };
}
- (CALayer *(^)(CATransform3D))g_transform {
    return ^(CATransform3D transform) {
        self.transform = transform;
        return self;
    };
}
- (CALayer *(^)(CGAffineTransform))g_affineTransform {
    return ^(CGAffineTransform affineTransform) {
        self.affineTransform = affineTransform;
        return self;
    };
}
- (CALayer *(^)(CGRect))g_frame {
    return ^(CGRect frame) {
        self.frame = frame;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_hidden {
    return ^(BOOL hidden) {
        self.hidden = hidden;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_doubleSided {
    return ^(BOOL doubleSided) {
        self.doubleSided = doubleSided;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_geometryFlipped {
    return ^(BOOL geometryFlipped) {
        self.geometryFlipped = geometryFlipped;
        return self;
    };
}
- (CALayer *(^)(CATransform3D))g_sublayerTransform {
    return ^(CATransform3D sublayerTransform) {
        self.sublayerTransform = sublayerTransform;
        return self;
    };
}
- (CALayer *(^)(CALayer *))g_mask {
    return ^(CALayer * mask) {
        self.mask = mask;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_masksToBounds {
    return ^(BOOL masksToBounds) {
        self.masksToBounds = masksToBounds;
        return self;
    };
}
- (CALayer *(^)(id))g_contents {
    return ^(id contents) {
        self.contents = contents;
        return self;
    };
}
- (CALayer *(^)(CGRect))g_contentsRect {
    return ^(CGRect contentsRect) {
        self.contentsRect = contentsRect;
        return self;
    };
}
- (CALayer *(^)(NSString *))g_contentsGravity {
    return ^(NSString * contentsGravity) {
        self.contentsGravity = contentsGravity;
        return self;
    };
}
- (CALayer *(^)(CGFloat))g_contentsScale {
    return ^(CGFloat contentsScale) {
        self.contentsScale = contentsScale;
        return self;
    };
}
- (CALayer *(^)(CGRect))g_contentsCenter {
    return ^(CGRect contentsCenter) {
        self.contentsCenter = contentsCenter;
        return self;
    };
}
- (CALayer *(^)(NSString *))g_contentsFormat {
    return ^(NSString * contentsFormat) {
        self.contentsFormat = contentsFormat;
        return self;
    };
}
- (CALayer *(^)(NSString *))g_minificationFilter {
    return ^(NSString * minificationFilter) {
        self.minificationFilter = minificationFilter;
        return self;
    };
}
- (CALayer *(^)(NSString *))g_magnificationFilter {
    return ^(NSString * magnificationFilter) {
        self.magnificationFilter = magnificationFilter;
        return self;
    };
}
- (CALayer *(^)(float))g_minificationFilterBias {
    return ^(float minificationFilterBias) {
        self.minificationFilterBias = minificationFilterBias;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_opaque {
    return ^(BOOL opaque) {
        self.opaque = opaque;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_needsDisplayOnBoundsChange {
    return ^(BOOL needsDisplayOnBoundsChange) {
        self.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_drawsAsynchronously {
    return ^(BOOL drawsAsynchronously) {
        self.drawsAsynchronously = drawsAsynchronously;
        return self;
    };
}
- (CALayer *(^)(CGContextRef))g_renderInContext {
    return ^(CGContextRef renderInContext) {
        [self renderInContext:renderInContext];
        return self;
    };
}
- (CALayer *(^)(CAEdgeAntialiasingMask))g_edgeAntialiasingMask {
    return ^(CAEdgeAntialiasingMask edgeAntialiasingMask) {
        self.edgeAntialiasingMask = edgeAntialiasingMask;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_allowsEdgeAntialiasing {
    return ^(BOOL allowsEdgeAntialiasing) {
        self.allowsEdgeAntialiasing = allowsEdgeAntialiasing;
        return self;
    };
}
- (CALayer *(^)(CGColorRef))g_backgroundColor {
    return ^(CGColorRef backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}
- (CALayer *(^)(CGFloat))g_cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.cornerRadius = cornerRadius;
        return self;
    };
}
- (CALayer *(^)(CACornerMask))g_maskedCorners {
    return ^(CACornerMask maskedCorners) {
        self.maskedCorners = maskedCorners;
        return self;
    };
}
- (CALayer *(^)(CGFloat))g_borderWidth {
    return ^(CGFloat borderWidth) {
        self.borderWidth = borderWidth;
        return self;
    };
}
- (CALayer *(^)(CGColorRef))g_borderColor {
    return ^(CGColorRef borderColor) {
        self.borderColor = borderColor;
        return self;
    };
}
- (CALayer *(^)(float))g_opacity {
    return ^(float opacity) {
        self.opacity = opacity;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_allowsGroupOpacity {
    return ^(BOOL allowsGroupOpacity) {
        self.allowsGroupOpacity = allowsGroupOpacity;
        return self;
    };
}
- (CALayer *(^)(id))g_compositingFilter {
    return ^(id compositingFilter) {
        self.compositingFilter = compositingFilter;
        return self;
    };
}
- (CALayer *(^)(NSArray *))g_filters {
    return ^(NSArray * filters) {
        self.filters = filters;
        return self;
    };
}
- (CALayer *(^)(NSArray *))g_backgroundFilters {
    return ^(NSArray * backgroundFilters) {
        self.backgroundFilters = backgroundFilters;
        return self;
    };
}
- (CALayer *(^)(BOOL))g_shouldRasterize {
    return ^(BOOL shouldRasterize) {
        self.shouldRasterize = shouldRasterize;
        return self;
    };
}
- (CALayer *(^)(CGFloat))g_rasterizationScale {
    return ^(CGFloat rasterizationScale) {
        self.rasterizationScale = rasterizationScale;
        return self;
    };
}
- (CALayer *(^)(CGColorRef))g_shadowColor {
    return ^(CGColorRef shadowColor) {
        self.shadowColor = shadowColor;
        return self;
    };
}
- (CALayer *(^)(float))g_shadowOpacity {
    return ^(float shadowOpacity) {
        self.shadowOpacity = shadowOpacity;
        return self;
    };
}
- (CALayer *(^)(CGSize))g_shadowOffset {
    return ^(CGSize shadowOffset) {
        self.shadowOffset = shadowOffset;
        return self;
    };
}
- (CALayer *(^)(CGFloat))g_shadowRadius {
    return ^(CGFloat shadowRadius) {
        self.shadowRadius = shadowRadius;
        return self;
    };
}

- (CALayer *(^)(CGPathRef))g_shadowPath {
    return ^(CGPathRef shadowPath) {
        self.shadowPath = shadowPath;
        return self;
    };
}
- (CALayer *(^)(NSDictionary<NSString *, id<CAAction>> *))g_actions {
    return ^(NSDictionary<NSString *, id<CAAction>> *actions) {
        self.actions = actions;
        return self;
    };
}

- (CALayer *(^)(NSString *))g_name {
    return ^(NSString *name) {
        self.name = name;
        return self;
    };
}
- (CALayer *(^)(id <CALayerDelegate>))g_delegate {
    return ^(id <CALayerDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}

- (CALayer *(^)(NSDictionary *))g_style {
    return ^(NSDictionary *style) {
        self.style = style;
        return self;
    };
}

- (CALayer *(^)(CALayer *))g_addSublayer {
    return ^(CALayer *layer) {
        [self addSublayer:layer];
        return self;
    };
}

- (CALayer *(^)(CALayer *))g_addToSuperLayer {
    return ^(CALayer *layer) {
        [layer addSublayer:self];
        return self;
    };
}

- (CALayer *(^)(CAAnimation *,NSString *))g_addAnimationForKey {
    return ^(CAAnimation *ani,NSString *key) {
        [self addAnimation:ani forKey:key];
        return self;
    };
}

- (CALayer *(^)(NSString *))g_removeAnimationForKey {
    return ^(NSString *key) {
        [self removeAnimationForKey:key];
        return self;
    };
}

@end
