//
//  UIView+PSChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (PSChainFunction)

#pragma mark - resize

+ (UIView *)g_init;

- (UIView *(^)(CGSize))g_size;
- (UIView *(^)(CGPoint))g_origin;
- (UIView *(^)(CGFloat))g_x;
- (UIView *(^)(CGFloat))g_y;
- (UIView *(^)(CGFloat))g_width;
- (UIView *(^)(CGFloat))g_height;
- (UIView *(^)(CGFloat))g_centerX;
- (UIView *(^)(CGFloat))g_centerY;
- (UIView *(^)(CGFloat))g_top;
- (UIView *(^)(CGFloat))g_left;
- (UIView *(^)(CGFloat))g_right;
- (UIView *(^)(CGFloat))g_bottom;

- (UIView *(^)(CGPoint position, CGPoint anchorPoint))g_setPositionAtAnchorPoint;

#pragma mark - attribute

- (UIView *(^)(NSInteger))g_tag;

//UIViewGeometry
- (UIView *(^)(CGRect))g_frame;
- (UIView *(^)(CGRect))g_bounds;
- (UIView *(^)(CGPoint))g_center;
- (UIView *(^)(CGAffineTransform))g_transform;

- (UIView *(^)(CGFloat))g_contentScaleFactor;
- (UIView *(^)(BOOL))g_multipleTouchEnabled;
- (UIView *(^)(BOOL))g_exclusiveTouch;
- (UIView *(^)(BOOL))g_autoresizesSubviews;
- (UIView *(^)(UIViewAutoresizing))g_autoresizingMask;

//UIViewHierarchy
- (UIView *(^)(UIEdgeInsets))g_layoutMargins NS_AVAILABLE_IOS(8_0);
- (UIView *(^)(NSDirectionalEdgeInsets))g_directionalLayoutMargins API_AVAILABLE(ios(11.0),tvos(11.0));
- (UIView *(^)(BOOL))g_preservesSuperviewLayoutMargins NS_AVAILABLE_IOS(8_0);
- (UIView *(^)(BOOL))g_insetsLayoutMarginsFromSafeArea API_AVAILABLE(ios(11.0),tvos(11.0));

//UIViewRendering
- (UIView *(^)(BOOL))g_clipsToBounds;
- (UIView *(^)(UIColor *))g_backgroundColor;
- (UIView *(^)(CGFloat))g_alpha;
- (UIView *(^)(BOOL))g_opaque;
- (UIView *(^)(BOOL))g_clearsContextBeforeDrawing;

- (UIView *(^)(BOOL))g_hidden;
- (UIView *(^)(UIViewContentMode))g_contentMode;
- (UIView *(^)(UIView *))g_maskView NS_AVAILABLE_IOS(8_0);
- (UIView *(^)(UIColor *))g_tintColor NS_AVAILABLE_IOS(7_0);
- (UIView *(^)(UIViewTintAdjustmentMode))g_tintAdjustmentMode NS_AVAILABLE_IOS(7_0);

//UIConstraintBasedCompatibility
- (UIView *(^)(BOOL))g_translatesAutoresizingMaskIntoConstraints NS_AVAILABLE_IOS(6_0);

//------------------------
- (UIView *(^)(UIView *))g_addSubview;
- (UIView *(^)(UIView *))g_addToSuperView;

#pragma mark layer

- (CALayer *)g_layerMaker;

#pragma mark - subviews
- (UILabel *)g_labelMaker;
- (UIButton *)g_buttonMaker;
- (UIImageView *)g_imageViewMaker;
- (UITextField *)g_textFieldMaker;
- (UITextView *)g_textViewMaker;
- (UIScrollView *)g_scrollViewMaker;
- (UITableView *)g_tableViewMaker;
- (UIControl *)g_controlMaker;
- (UICollectionView *)g_collectionViewMaker;

@end
