//
//  CALayer+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (PSG_ChainFunction)

+ (CALayer *)g_init;

- (CALayer *(^)(CGRect))g_bounds;
- (CALayer *(^)(CGPoint))g_position;
- (CALayer *(^)(CGFloat))g_zPosition;
- (CALayer *(^)(CGPoint))g_anchorPoint;
- (CALayer *(^)(CGFloat))g_anchorPointZ;
- (CALayer *(^)(CATransform3D))g_transform;
- (CALayer *(^)(CGAffineTransform))g_affineTransform;
- (CALayer *(^)(CGRect))g_frame;
- (CALayer *(^)(BOOL))g_hidden;
- (CALayer *(^)(BOOL))g_doubleSided;
- (CALayer *(^)(BOOL))g_geometryFlipped;
- (CALayer *(^)(CATransform3D))g_sublayerTransform;
- (CALayer *(^)(CALayer *))g_mask;
- (CALayer *(^)(BOOL))g_masksToBounds;
- (CALayer *(^)(id))g_contents;
- (CALayer *(^)(CGRect))g_contentsRect;
- (CALayer *(^)(NSString *))g_contentsGravity;
- (CALayer *(^)(CGFloat))g_contentsScale;
- (CALayer *(^)(CGRect))g_contentsCenter;
- (CALayer *(^)(NSString *))g_contentsFormat;
- (CALayer *(^)(NSString *))g_minificationFilter;
- (CALayer *(^)(NSString *))g_magnificationFilter;
- (CALayer *(^)(float))g_minificationFilterBias;
- (CALayer *(^)(BOOL))g_opaque;
- (CALayer *(^)(BOOL))g_needsDisplayOnBoundsChange;
- (CALayer *(^)(BOOL))g_drawsAsynchronously;
- (CALayer *(^)(CGContextRef))g_renderInContext;
- (CALayer *(^)(CAEdgeAntialiasingMask))g_edgeAntialiasingMask;
- (CALayer *(^)(BOOL))g_allowsEdgeAntialiasing;
- (CALayer *(^)(CGColorRef))g_backgroundColor;
- (CALayer *(^)(CGFloat))g_cornerRadius;
- (CALayer *(^)(CACornerMask))g_maskedCorners;
- (CALayer *(^)(CGFloat))g_borderWidth;
- (CALayer *(^)(CGColorRef))g_borderColor;
- (CALayer *(^)(float))g_opacity;
- (CALayer *(^)(BOOL))g_allowsGroupOpacity;
- (CALayer *(^)(id))g_compositingFilter;
- (CALayer *(^)(NSArray *))g_filters;
- (CALayer *(^)(NSArray *))g_backgroundFilters;
- (CALayer *(^)(BOOL))g_shouldRasterize;
- (CALayer *(^)(CGFloat))g_rasterizationScale;
- (CALayer *(^)(CGColorRef))g_shadowColor;
- (CALayer *(^)(float))g_shadowOpacity;
- (CALayer *(^)(CGSize))g_shadowOffset;
- (CALayer *(^)(CGFloat))g_shadowRadius;
- (CALayer *(^)(CGPathRef))g_shadowPath;
- (CALayer *(^)(NSDictionary<NSString *, id<CAAction>> *))g_actions;
- (CALayer *(^)(NSString *))g_name;
- (CALayer *(^)(id <CALayerDelegate>))g_delegate;
- (CALayer *(^)(NSDictionary *))g_style;

- (CALayer *(^)(CALayer *))g_addSublayer;
- (CALayer *(^)(CALayer *))g_addToSuperLayer;
- (CALayer *(^)(CAAnimation *,NSString *))g_addAnimationForKey;
- (CALayer *(^)(NSString *))g_removeAnimationForKey;

@end
