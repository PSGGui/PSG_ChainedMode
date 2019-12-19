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

@property (nonatomic, copy, readonly) UIView *(^g_size)(CGSize);
@property (nonatomic, copy, readonly) UIView *(^g_origin)(CGPoint);
@property (nonatomic, copy, readonly) UIView *(^g_x)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_y)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_width)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_height)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_centerX)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_centerY)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_top)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_left)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_right)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_bottom)(CGFloat);

@property (nonatomic, copy, readonly) UIView *(^g_setPositionAtAnchorPoint)(CGPoint position, CGPoint anchorPoint);

#pragma mark - attribute

@property (nonatomic, copy, readonly) UIView *(^g_tag)(NSInteger);

//UIViewGeometry
@property (nonatomic, copy, readonly) UIView *(^g_frame)(CGRect);
@property (nonatomic, copy, readonly) UIView *(^g_bounds)(CGRect);
@property (nonatomic, copy, readonly) UIView *(^g_center)(CGPoint);
@property (nonatomic, copy, readonly) UIView *(^g_transform)(CGAffineTransform);

@property (nonatomic, copy, readonly) UIView *(^g_contentScaleFactor)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_multipleTouchEnabled)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^g_exclusiveTouch)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^g_autoresizesSubviews)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^g_autoresizingMask)(UIViewAutoresizing);

//UIViewHierarchy
@property (nonatomic, copy, readonly) UIView *(^g_layoutMargins)(UIEdgeInsets) NS_AVAILABLE_IOS(8_0);
@property (nonatomic, copy, readonly) UIView *(^g_directionalLayoutMargins)(NSDirectionalEdgeInsets) API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic, copy, readonly) UIView *(^g_preservesSuperviewLayoutMargins)(BOOL) NS_AVAILABLE_IOS(8_0);
@property (nonatomic, copy, readonly) UIView *(^g_insetsLayoutMarginsFromSafeArea)(BOOL) API_AVAILABLE(ios(11.0),tvos(11.0));

//UIViewRendering
@property (nonatomic, copy, readonly) UIView *(^g_clipsToBounds)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^g_backgroundColor)(UIColor *);
@property (nonatomic, copy, readonly) UIView *(^g_alpha)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^g_opaque)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^g_clearsContextBeforeDrawing)(BOOL);

@property (nonatomic, copy, readonly) UIView *(^g_hidden)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^g_contentMode)(UIViewContentMode);
@property (nonatomic, copy, readonly) UIView *(^g_maskView)(UIView *) NS_AVAILABLE_IOS(8_0);
@property (nonatomic, copy, readonly) UIView *(^g_tintColor)(UIColor *) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) UIView *(^g_tintAdjustmentMode)(UIViewTintAdjustmentMode) NS_AVAILABLE_IOS(7_0);

//UIConstraintBasedCompatibility
@property (nonatomic, copy, readonly) UIView *(^g_translatesAutoresizingMaskIntoConstraints)(BOOL) NS_AVAILABLE_IOS(6_0);

//------------------------
@property (nonatomic, copy, readonly) UIView *(^g_addSubview)(UIView *);
@property (nonatomic, copy, readonly) UIView *(^g_addToSuperView)(UIView *);

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
