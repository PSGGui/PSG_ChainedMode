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

- (UICollectionViewFlowLayout *(^)(CGFloat))g_minimumLineSpacing;
- (UICollectionViewFlowLayout *(^)(CGFloat))g_minimumInteritemSpacing;
- (UICollectionViewFlowLayout *(^)(CGSize))g_itemSize;
- (UICollectionViewFlowLayout *(^)(CGSize))g_estimatedItemSize NS_AVAILABLE_IOS(8_0);
- (UICollectionViewFlowLayout *(^)(UICollectionViewScrollDirection))g_scrollDirection;
- (UICollectionViewFlowLayout *(^)(CGSize))g_headerReferenceSize;
- (UICollectionViewFlowLayout *(^)(CGSize))g_footerReferenceSize;
- (UICollectionViewFlowLayout *(^)(UIEdgeInsets))g_sectionInset;
- (UICollectionViewFlowLayout *(^)(UICollectionViewFlowLayoutSectionInsetReference))g_sectionInsetReference API_AVAILABLE(ios(11.0), tvos(11.0)) API_UNAVAILABLE(watchos);
- (UICollectionViewFlowLayout *(^)(BOOL))g_sectionHeadersPinToVisibleBounds NS_AVAILABLE_IOS(9_0);
- (UICollectionViewFlowLayout *(^)(BOOL))g_sectionFootersPinToVisibleBounds NS_AVAILABLE_IOS(9_0);

@end
