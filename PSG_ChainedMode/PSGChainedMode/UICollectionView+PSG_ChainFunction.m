//
//  UICollectionView+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UICollectionView+PSG_ChainFunction.h"

@implementation UICollectionView (PSG_ChainFunction)

+ (UICollectionView *)g_init {
    return [[UICollectionView alloc] init];
}

- (UIView *)g_viewMaker {
    return (UIView *)self;
}

- (UIScrollView *)g_scrollMaker {
    return (UIScrollView *)self;
}

+ (UICollectionView *(^)(CGRect rect, UICollectionViewLayout *layout))g_initFrameLayout {
    return ^(CGRect rect, UICollectionViewLayout* layout) {
        return [[UICollectionView alloc] initWithFrame:rect collectionViewLayout:layout];
    };
}

#pragma mark - collectionView

- (UICollectionView *(^)(UICollectionViewLayout *))g_collectionViewLayout {
    return ^(UICollectionViewLayout * collectionViewLayout) {
        self.collectionViewLayout = collectionViewLayout;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDelegate>))g_delegate {
    return ^(id <UICollectionViewDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDataSource>))g_dataSource {
    return ^(id <UICollectionViewDataSource> dataSource) {
        self.dataSource = dataSource;
        return self;
    };
}
- (UICollectionView *(^)(id<UICollectionViewDataSourcePrefetching>))g_prefetchDataSource NS_AVAILABLE_IOS(10_0) {
    return ^(id<UICollectionViewDataSourcePrefetching> prefetchDataSource) {
        self.prefetchDataSource = prefetchDataSource;
        return self;
    };
}
- (UICollectionView *(^)(BOOL))g_prefetchingEnabled NS_AVAILABLE_IOS(10_0) {
    return ^(BOOL prefetchingEnabled) {
        self.prefetchingEnabled = prefetchingEnabled;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDragDelegate>))g_dragDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^(id <UICollectionViewDragDelegate> dragDelegate) {
        self.dragDelegate = dragDelegate;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDropDelegate>))g_dropDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^(id <UICollectionViewDropDelegate> dropDelegate) {
        self.dropDelegate = dropDelegate;
        return self;
    };
}

- (UICollectionView *(^)(BOOL))g_dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^(BOOL dragInteractionEnabled) {
        self.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}
- (UICollectionView *(^)(UICollectionViewReorderingCadence))g_reorderingCadence API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^(UICollectionViewReorderingCadence reorderingCadence) {
        self.reorderingCadence = reorderingCadence;
        return self;
    };
}
- (UICollectionView *(^)(UIView *))g_backgroundView {
    return ^(UIView * backgroundView) {
        self.backgroundView = backgroundView;
        return self;
    };
}
- (UICollectionView *(^)(BOOL))g_allowsSelection {
    return ^(BOOL allowsSelection) {
        self.allowsSelection = allowsSelection;
        return self;
    };
}
- (UICollectionView *(^)(BOOL))g_allowsMultipleSelection {
    return ^(BOOL allowsMultipleSelection) {
        self.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}
- (UICollectionView *(^)(BOOL))g_remembersLastFocusedIndexPath NS_AVAILABLE_IOS(9_0) {
    return ^(BOOL remembersLastFocusedIndexPath) {
        self.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath;
        return self;
    };
}

// register class
- (UICollectionView *(^)(Class, NSString *))g_registerClass {
    return ^(Class cls, NSString *Id) {
        [self registerClass:cls forCellWithReuseIdentifier:Id];
        return self;
    };
}
- (UICollectionView *(^)(UINib *, NSString *))g_registerNib {
    return ^(UINib *nib, NSString *Id) {
        [self registerNib:nib forCellWithReuseIdentifier:Id];
        return self;
    };
}
- (UICollectionView *(^)(Class, NSString *))g_registerHeaderClass {
    return ^(Class cls, NSString *Id) {
        [self registerClass:cls forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:Id];
        return self;
    };
}
- (UICollectionView *(^)(UINib *, NSString *))g_registerHeaderNib {
    return ^(UINib *nib, NSString *Id) {
        [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:Id];
        return self;
    };
}

- (UICollectionView *(^)(Class, NSString *))g_registerFooterClass {
    return ^(Class cls, NSString *Id) {
        [self registerClass:cls forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:Id];
        return self;
    };
}

- (UICollectionView *(^)(UINib *, NSString *))g_registerFooterNib {
    return ^(UINib *nib, NSString *Id) {
        [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:Id];
        return self;
    };
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

@end
