//
//  UITableView+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UITableView+PSG_ChainFunction.h"

@implementation UITableView (PSG_ChainFunction)

+ (UITableView *)g_init {
    return [[UITableView alloc] init];
}

- (UIView *)g_viewMaker {
    return (UIView *)self;
}

- (UIScrollView *)g_scrollMaker {
    return (UIScrollView *)self;
}

+ (UITableView *(^)(CGRect rect, UITableViewStyle style))g_initFrameStyle {
    return ^(CGRect rect, UITableViewStyle style) {
        return [[UITableView alloc] initWithFrame:rect style:style];
    };
}

#pragma mark - tableView

- (UITableView *(^)(id <UITableViewDataSource>))g_dataSource {
    return ^(id <UITableViewDataSource> dataSource) {
        self.dataSource = dataSource;
        return self;
    };
}
- (UITableView *(^)(id <UITableViewDelegate>))g_delegate {
    return ^(id <UITableViewDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}
- (UITableView *(^)(id <UITableViewDataSourcePrefetching>))g_prefetchDataSource {
    return ^(id <UITableViewDataSourcePrefetching> prefetchDataSource) {
        self.prefetchDataSource = prefetchDataSource;
        return self;
    };
}
- (UITableView *(^)(id <UITableViewDragDelegate>))g_dragDelegate {
    return ^(id <UITableViewDragDelegate> dragDelegate) {
        self.dragDelegate = dragDelegate;
        return self;
    };
}
- (UITableView *(^)(id <UITableViewDropDelegate>))g_dropDelegate  {
    return ^(id <UITableViewDropDelegate> dropDelegate) {
        self.dropDelegate = dropDelegate;
        return self;
    };
}

- (UITableView *(^)(CGFloat))g_rowHeight {
    return ^(CGFloat rowHeight) {
        self.rowHeight = rowHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat))g_sectionHeaderHeight {
    return ^(CGFloat sectionHeaderHeight) {
        self.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat))g_sectionFooterHeight {
    return ^(CGFloat sectionFooterHeight) {
        self.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat))g_estimatedRowHeight {
    return ^(CGFloat estimatedRowHeight) {
        self.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat))g_estimatedSectionHeaderHeight {
    return ^(CGFloat estimatedSectionHeaderHeight) {
        self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat))g_estimatedSectionFooterHeight {
    return ^(CGFloat estimatedSectionFooterHeight) {
        self.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}
- (UITableView *(^)(UIEdgeInsets))g_separatorInset {
    return ^(UIEdgeInsets separatorInset) {
        self.separatorInset = separatorInset;
        return self;
    };
}
- (UITableView *(^)(UITableViewSeparatorInsetReference))g_separatorInsetReference {
    return ^(UITableViewSeparatorInsetReference separatorInsetReference) {
        self.separatorInsetReference = separatorInsetReference;
        return self;
    };
}
- (UITableView *(^)(UIView *))g_backgroundView {
    return ^(UIView * backgroundView) {
        self.backgroundView = backgroundView;
        return self;
    };
}

- (UITableView *(^)(BOOL))g_editing {
    return ^(BOOL editing) {
        self.editing = editing;
        return self;
    };
}
- (UITableView *(^)(BOOL))g_allowsSelection {
    return ^(BOOL allowsSelection) {
        self.allowsSelection = allowsSelection;
        return self;
    };
}
- (UITableView *(^)(BOOL))g_allowsSelectionDuringEditing {
    return ^(BOOL allowsSelectionDuringEditing) {
        self.allowsSelectionDuringEditing = allowsSelectionDuringEditing;
        return self;
    };
}
- (UITableView *(^)(NSInteger))g_sectionIndexMinimumDisplayRowCount {
    return ^(NSInteger sectionIndexMinimumDisplayRowCount) {
        self.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount;
        return self;
    };
}
- (UITableView *(^)(UIColor *))g_sectionIndexColor {
    return ^(UIColor * sectionIndexColor) {
        self.sectionIndexColor = sectionIndexColor;
        return self;
    };
}
- (UITableView *(^)(UIColor *))g_sectionIndexBackgroundColor {
    return ^(UIColor * sectionIndexBackgroundColor) {
        self.sectionIndexBackgroundColor = sectionIndexBackgroundColor;
        return self;
    };
}
- (UITableView *(^)(UIColor *))g_sectionIndexTrackingBackgroundColor {
    return ^(UIColor * sectionIndexTrackingBackgroundColor) {
        self.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor;
        return self;
    };
}
- (UITableView *(^)(UITableViewCellSeparatorStyle))g_separatorStyle {
    return ^(UITableViewCellSeparatorStyle separatorStyle) {
        self.separatorStyle = separatorStyle;
        return self;
    };
}
- (UITableView *(^)(UIColor *))g_separatorColor {
    return ^(UIColor * separatorColor) {
        self.separatorColor = separatorColor;
        return self;
    };
}
- (UITableView *(^)(UIVisualEffect *))g_separatorEffect {
    return ^(UIVisualEffect * separatorEffect) {
        self.separatorEffect = separatorEffect;
        return self;
    };
}
- (UITableView *(^)(BOOL))g_cellLayoutMarginsFollowReadableWidth {
    return ^(BOOL  cellLayoutMarginsFollowReadableWidth) {
        self.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth;
        return self;
    };
}
- (UITableView *(^)(BOOL))g_insetsContentViewsToSafeArea {
    return ^(BOOL  insetsContentViewsToSafeArea) {
        self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea;
        return self;
    };
}
- (UITableView *(^)(UIView *))g_tableHeaderView {
    return ^(UIView * tableHeaderView) {
        self.tableHeaderView = tableHeaderView;
        return self;
    };
}
- (UITableView *(^)(UIView *))g_tableFooterView {
    return ^(UIView * tableFooterView) {
        self.tableFooterView = tableFooterView;
        return self;
    };
}

- (UITableView *(^)(BOOL))g_dragInteractionEnabled {
    return ^(BOOL  dragInteractionEnabled) {
        self.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}

//register class ..
- (UITableView *(^)(Class, NSString *))g_registerClass {
    return ^(Class cls, NSString *Id) {
        [self registerClass:cls forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}
- (UITableView *(^)(UINib *, NSString *))g_registerNib {
    return ^(UINib *nib, NSString *Id) {
        [self registerNib:nib forCellReuseIdentifier:Id];
        return self;
    };
}
- (UITableView *(^)(Class, NSString *))g_registerHeaderFooterClass {
    return ^(Class cls, NSString *Id) {
        [self registerClass:cls forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}

- (UITableView *(^)(UINib *, NSString *))g_registerHeaderFooterNib {
    return ^(UINib *nib, NSString *Id) {
        [self registerNib:nib forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

@end
