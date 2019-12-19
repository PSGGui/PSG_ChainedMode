//
//  UICollectionViewFlowLayout+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewFlowLayout (PSG_ChainFunction)

+ (UICollectionViewFlowLayout *)g_init;

@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_minimumLineSpacing)(CGFloat);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_minimumInteritemSpacing)(CGFloat);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_itemSize)(CGSize);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_estimatedItemSize)(CGSize) NS_AVAILABLE_IOS(8_0);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_scrollDirection)(UICollectionViewScrollDirection);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_headerReferenceSize)(CGSize);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_footerReferenceSize)(CGSize);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_sectionInset)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_sectionInsetReference)(UICollectionViewFlowLayoutSectionInsetReference) API_AVAILABLE(ios(11.0), tvos(11.0)) API_UNAVAILABLE(watchos);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_sectionHeadersPinToVisibleBounds)(BOOL) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) UICollectionViewFlowLayout *(^g_sectionFootersPinToVisibleBounds)(BOOL) NS_AVAILABLE_IOS(9_0);

@end
