//
//  UIImageView+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (PSG_ChainFunction)

+ (UIImageView *)g_init;

- (UIView *)g_viewMaker;

#pragma mark -

@property (nonatomic, copy, readonly) UIImageView *(^g_image)(UIImage *);
@property (nonatomic, copy, readonly) UIImageView *(^g_highlightedImage)(UIImage *);
@property (nonatomic, copy, readonly) UIImageView *(^g_userInteractionEnabled)(BOOL);
@property (nonatomic, copy, readonly) UIImageView *(^g_highlighted)(BOOL);
@property (nonatomic, copy, readonly) UIImageView *(^g_animationImages)(NSArray<UIImage *> *);
@property (nonatomic, copy, readonly) UIImageView *(^g_highlightedAnimationImages)( NSArray<UIImage *> *);
@property (nonatomic, copy, readonly) UIImageView *(^g_animationDuration)(NSTimeInterval);
@property (nonatomic, copy, readonly) UIImageView *(^g_animationRepeatCount)(NSInteger);
@property (nonatomic, copy, readonly) UIImageView *(^g_tintColor)(UIColor *) NS_AVAILABLE_IOS(7_0);

#pragma mark layer

- (CALayer *)g_layerMaker;

@end
