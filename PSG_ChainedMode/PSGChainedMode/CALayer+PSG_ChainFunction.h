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

@property (nonatomic, copy, readonly) CALayer * (^g_bounds)(CGRect);
@property (nonatomic, copy, readonly) CALayer * (^g_position)(CGPoint);
@property (nonatomic, copy, readonly) CALayer * (^g_zPosition)(CGFloat);
@property (nonatomic, copy, readonly) CALayer * (^g_anchorPoint)(CGPoint);
@property (nonatomic, copy, readonly) CALayer * (^g_anchorPointZ)(CGFloat);
@property (nonatomic, copy, readonly) CALayer * (^g_transform)(CATransform3D);
@property (nonatomic, copy, readonly) CALayer * (^g_affineTransform)(CGAffineTransform);
@property (nonatomic, copy, readonly) CALayer * (^g_frame)(CGRect);
@property (nonatomic, copy, readonly) CALayer * (^g_hidden)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_doubleSided)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_geometryFlipped)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_sublayerTransform)(CATransform3D);
@property (nonatomic, copy, readonly) CALayer * (^g_mask)(CALayer *);
@property (nonatomic, copy, readonly) CALayer * (^g_masksToBounds)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_contents)(id);
@property (nonatomic, copy, readonly) CALayer * (^g_contentsRect)(CGRect);
@property (nonatomic, copy, readonly) CALayer * (^g_contentsGravity)(NSString *);
@property (nonatomic, copy, readonly) CALayer * (^g_contentsScale)(CGFloat);
@property (nonatomic, copy, readonly) CALayer * (^g_contentsCenter)(CGRect);
@property (nonatomic, copy, readonly) CALayer * (^g_contentsFormat)(NSString *);
@property (nonatomic, copy, readonly) CALayer * (^g_minificationFilter)(NSString *);
@property (nonatomic, copy, readonly) CALayer * (^g_magnificationFilter)(NSString *);
@property (nonatomic, copy, readonly) CALayer * (^g_minificationFilterBias)(float);
@property (nonatomic, copy, readonly) CALayer * (^g_opaque)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_needsDisplayOnBoundsChange)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_drawsAsynchronously)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_renderInContext)(CGContextRef);
@property (nonatomic, copy, readonly) CALayer * (^g_edgeAntialiasingMask)(CAEdgeAntialiasingMask);
@property (nonatomic, copy, readonly) CALayer * (^g_allowsEdgeAntialiasing)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_backgroundColor)(CGColorRef);
@property (nonatomic, copy, readonly) CALayer * (^g_cornerRadius)(CGFloat);
@property (nonatomic, copy, readonly) CALayer * (^g_maskedCorners)(CACornerMask);
@property (nonatomic, copy, readonly) CALayer * (^g_borderWidth)(CGFloat);
@property (nonatomic, copy, readonly) CALayer * (^g_borderColor)(CGColorRef);
@property (nonatomic, copy, readonly) CALayer * (^g_opacity)(float);
@property (nonatomic, copy, readonly) CALayer * (^g_allowsGroupOpacity)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_compositingFilter)(id);
@property (nonatomic, copy, readonly) CALayer * (^g_filters)(NSArray *);
@property (nonatomic, copy, readonly) CALayer * (^g_backgroundFilters)(NSArray *);
@property (nonatomic, copy, readonly) CALayer * (^g_shouldRasterize)(BOOL);
@property (nonatomic, copy, readonly) CALayer * (^g_rasterizationScale)(CGFloat);
@property (nonatomic, copy, readonly) CALayer * (^g_shadowColor)(CGColorRef);
@property (nonatomic, copy, readonly) CALayer * (^g_shadowOpacity)(float);
@property (nonatomic, copy, readonly) CALayer * (^g_shadowOffset)(CGSize);
@property (nonatomic, copy, readonly) CALayer * (^g_shadowRadius)(CGFloat);
@property (nonatomic, copy, readonly) CALayer * (^g_shadowPath)(CGPathRef);
@property (nonatomic, copy, readonly) CALayer * (^g_actions)(NSDictionary<NSString *, id<CAAction>> *);
@property (nonatomic, copy, readonly) CALayer * (^g_name)(NSString *);
@property (nonatomic, copy, readonly) CALayer * (^g_delegate)(id <CALayerDelegate>);
@property (nonatomic, copy, readonly) CALayer * (^g_style)(NSDictionary *);

@property (nonatomic, copy, readonly) CALayer * (^g_addSublayer)(CALayer *);
@property (nonatomic, copy, readonly) CALayer * (^g_addToSuperLayer)(CALayer *);
@property (nonatomic, copy, readonly) CALayer * (^g_addAnimationForKey)(CAAnimation *,NSString *);
@property (nonatomic, copy, readonly) CALayer * (^g_removeAnimationForKey)(NSString *);

@end
