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

- (UIImageView *(^)(UIImage *))g_image;
- (UIImageView *(^)(UIImage *))g_highlightedImage;
- (UIImageView *(^)(BOOL))g_userInteractionEnabled;
- (UIImageView *(^)(BOOL))g_highlighted;
- (UIImageView *(^)(NSArray<UIImage *> *))g_animationImages;
- (UIImageView *(^)( NSArray<UIImage *> *))g_highlightedAnimationImages;
- (UIImageView *(^)(NSTimeInterval))g_animationDuration;
- (UIImageView *(^)(NSInteger))g_animationRepeatCount;
- (UIImageView *(^)(UIColor *))g_tintColor NS_AVAILABLE_IOS(7_0);

#pragma mark layer

- (CALayer *)g_layerMaker;

@end
