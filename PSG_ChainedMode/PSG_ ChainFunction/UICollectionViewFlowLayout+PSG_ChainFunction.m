//
//  UICollectionViewFlowLayout+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UICollectionViewFlowLayout+PSG_ChainFunction.h"

@implementation UICollectionViewFlowLayout (PSG_ChainFunction)

+ (UICollectionViewFlowLayout *)g_init {
    return [[UICollectionViewFlowLayout alloc] init];
}

- (UICollectionViewFlowLayout *(^)(CGFloat))g_minimumLineSpacing {
    return ^(CGFloat minimumLineSpacing) {
        self.minimumLineSpacing = minimumLineSpacing;
        return self;
    };
}

- (UICollectionViewFlowLayout *(^)(CGFloat))g_minimumInteritemSpacing {
    return ^(CGFloat minimumInteritemSpacing) {
        self.minimumInteritemSpacing = minimumInteritemSpacing;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGSize))g_itemSize {
    return ^(CGSize itemSize) {
        self.itemSize = itemSize;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGSize))g_estimatedItemSize NS_AVAILABLE_IOS(8_0) {
    return ^(CGSize estimatedItemSize) {
        self.estimatedItemSize = estimatedItemSize;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(UICollectionViewScrollDirection))g_scrollDirection {
    return ^(UICollectionViewScrollDirection scrollDirection) {
        self.scrollDirection = scrollDirection;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGSize))g_headerReferenceSize {
    return ^(CGSize headerReferenceSize) {
        self.headerReferenceSize = headerReferenceSize;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGSize))g_footerReferenceSize {
    return ^(CGSize footerReferenceSize) {
        self.footerReferenceSize = footerReferenceSize;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(UIEdgeInsets))g_sectionInset {
    return ^(UIEdgeInsets sectionInset) {
        self.sectionInset = sectionInset;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(UICollectionViewFlowLayoutSectionInsetReference))g_sectionInsetReference  {
    return ^(UICollectionViewFlowLayoutSectionInsetReference sectionInsetReference) {
        self.sectionInsetReference = sectionInsetReference;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(BOOL))g_sectionHeadersPinToVisibleBounds NS_AVAILABLE_IOS(9_0) {
    return ^(BOOL sectionHeadersPinToVisibleBounds) {
        self.sectionHeadersPinToVisibleBounds = sectionHeadersPinToVisibleBounds;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(BOOL))g_sectionFootersPinToVisibleBounds {
    return ^(BOOL sectionFootersPinToVisibleBounds) {
        self.sectionFootersPinToVisibleBounds = sectionFootersPinToVisibleBounds;
        return self;
    };
}

@end
