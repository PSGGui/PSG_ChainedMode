//
//  UICollectionView+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (PSG_ChainFunction)

+ (UICollectionView *)g_init;

- (UIView *)g_viewMaker;

- (UIScrollView *)g_scrollMaker;

+ (UICollectionView *(^)(CGRect rect, UICollectionViewLayout *layout))g_initFrameLayout;

#pragma mark - collectionView

@property (nonatomic, copy, readonly) UICollectionView *(^g_collectionViewLayout)(UICollectionViewLayout *);
@property (nonatomic, copy, readonly) UICollectionView *(^g_delegate)(id <UICollectionViewDelegate>);
@property (nonatomic, copy, readonly) UICollectionView *(^g_dataSource)(id <UICollectionViewDataSource>);
@property (nonatomic, copy, readonly) UICollectionView *(^g_prefetchDataSource)(id<UICollectionViewDataSourcePrefetching>) NS_AVAILABLE_IOS(10_0);
@property (nonatomic, copy, readonly) UICollectionView *(^g_prefetchingEnabled)(BOOL) NS_AVAILABLE_IOS(10_0);
@property (nonatomic, copy, readonly) UICollectionView *(^g_dragDelegate)(id <UICollectionViewDragDelegate>) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) UICollectionView *(^g_dropDelegate)(id <UICollectionViewDropDelegate>) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);;

@property (nonatomic, copy, readonly) UICollectionView *(^g_dragInteractionEnabled)(BOOL) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) UICollectionView *(^g_reorderingCadence)(UICollectionViewReorderingCadence) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) UICollectionView *(^g_backgroundView)(UIView *);
@property (nonatomic, copy, readonly) UICollectionView *(^g_allowsSelection)(BOOL);
@property (nonatomic, copy, readonly) UICollectionView *(^g_allowsMultipleSelection)(BOOL);
@property (nonatomic, copy, readonly) UICollectionView *(^g_remembersLastFocusedIndexPath)(BOOL) NS_AVAILABLE_IOS(9_0);

// register class
@property (nonatomic, copy, readonly) UICollectionView *(^g_registerClass)(Class, NSString *);
@property (nonatomic, copy, readonly) UICollectionView *(^g_registerNib)(UINib *, NSString *);
@property (nonatomic, copy, readonly) UICollectionView *(^g_registerHeaderClass)(Class, NSString *);
@property (nonatomic, copy, readonly) UICollectionView *(^g_registerHeaderNib)(UINib *, NSString *);
@property (nonatomic, copy, readonly) UICollectionView *(^g_registerFooterClass)(Class, NSString *);
@property (nonatomic, copy, readonly) UICollectionView *(^g_registerFooterNib)(UINib *, NSString *);

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
