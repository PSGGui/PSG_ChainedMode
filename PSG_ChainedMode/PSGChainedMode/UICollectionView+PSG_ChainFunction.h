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

- (UICollectionView *(^)(UICollectionViewLayout *))g_collectionViewLayout;
- (UICollectionView *(^)(id <UICollectionViewDelegate>))g_delegate;
- (UICollectionView *(^)(id <UICollectionViewDataSource>))g_dataSource;
- (UICollectionView *(^)(id<UICollectionViewDataSourcePrefetching>))g_prefetchDataSource NS_AVAILABLE_IOS(10_0);
- (UICollectionView *(^)(BOOL))g_prefetchingEnabled NS_AVAILABLE_IOS(10_0);
- (UICollectionView *(^)(id <UICollectionViewDragDelegate>))g_dragDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
- (UICollectionView *(^)(id <UICollectionViewDropDelegate>))g_dropDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);;

- (UICollectionView *(^)(BOOL))g_dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
- (UICollectionView *(^)(UICollectionViewReorderingCadence))g_reorderingCadence API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
- (UICollectionView *(^)(UIView *))g_backgroundView;
- (UICollectionView *(^)(BOOL))g_allowsSelection;
- (UICollectionView *(^)(BOOL))g_allowsMultipleSelection;
- (UICollectionView *(^)(BOOL))g_remembersLastFocusedIndexPath NS_AVAILABLE_IOS(9_0);

// register class
- (UICollectionView *(^)(Class, NSString *))g_registerClass;
- (UICollectionView *(^)(UINib *, NSString *))g_registerNib;
- (UICollectionView *(^)(Class, NSString *))g_registerHeaderClass;
- (UICollectionView *(^)(UINib *, NSString *))g_registerHeaderNib;
- (UICollectionView *(^)(Class, NSString *))g_registerFooterClass;
- (UICollectionView *(^)(UINib *, NSString *))g_registerFooterNib;

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
