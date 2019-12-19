//
//  UITableView+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (PSG_ChainFunction)

+ (UITableView *)g_init;

- (UIView *)g_viewMaker;

- (UIScrollView *)g_scrollMaker;

+ (UITableView *(^)(CGRect rect, UITableViewStyle style))g_initFrameStyle;

#pragma mark - tableView

@property (nonatomic, copy, readonly) UITableView *(^g_dataSource)(id <UITableViewDataSource>);
@property (nonatomic, copy, readonly) UITableView *(^g_delegate)(id <UITableViewDelegate>);
@property (nonatomic, copy, readonly) UITableView *(^g_prefetchDataSource)(id <UITableViewDataSourcePrefetching>) NS_AVAILABLE_IOS(10_0);
@property (nonatomic, copy, readonly) UITableView *(^g_dragDelegate)(id <UITableViewDragDelegate>) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) UITableView *(^g_dropDelegate)(id <UITableViewDropDelegate>) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@property (nonatomic, copy, readonly) UITableView *(^g_rowHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^g_sectionHeaderHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^g_sectionFooterHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^g_estimatedRowHeight)(CGFloat) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) UITableView *(^g_estimatedSectionHeaderHeight)(CGFloat) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) UITableView *(^g_estimatedSectionFooterHeight)(CGFloat) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) UITableView *(^g_separatorInset)(UIEdgeInsets) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) UITableView *(^g_separatorInsetReference)(UITableViewSeparatorInsetReference) API_AVAILABLE(ios(11.0), tvos(11.0));
@property (nonatomic, copy, readonly) UITableView *(^g_backgroundView)(UIView *) NS_AVAILABLE_IOS(3_2);

@property (nonatomic, copy, readonly) UITableView *(^g_editing)(BOOL);
@property (nonatomic, copy, readonly) UITableView *(^g_allowsSelection)(BOOL) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) UITableView *(^g_allowsSelectionDuringEditing)(BOOL);
@property (nonatomic, copy, readonly) UITableView *(^g_sectionIndexMinimumDisplayRowCount)(NSInteger);
@property (nonatomic, copy, readonly) UITableView *(^g_sectionIndexColor)(UIColor *) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITableView *(^g_sectionIndexBackgroundColor)(UIColor *) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) UITableView *(^g_sectionIndexTrackingBackgroundColor)(UIColor *) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITableView *(^g_separatorStyle)(UITableViewCellSeparatorStyle);
@property (nonatomic, copy, readonly) UITableView *(^g_separatorColor)(UIColor *);
@property (nonatomic, copy, readonly) UITableView *(^g_separatorEffect)(UIVisualEffect *) NS_AVAILABLE_IOS(8_0);
@property (nonatomic, copy, readonly) UITableView *(^g_cellLayoutMarginsFollowReadableWidth)(BOOL) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) UITableView *(^g_insetsContentViewsToSafeArea)(BOOL) API_AVAILABLE(ios(11.0), tvos(11.0));
@property (nonatomic, copy, readonly) UITableView *(^g_tableHeaderView)(UIView *);
@property (nonatomic, copy, readonly) UITableView *(^g_tableFooterView)(UIView *);

@property (nonatomic, copy, readonly) UITableView *(^g_dragInteractionEnabled)(BOOL) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

//register class ..
@property (nonatomic, copy, readonly) UITableView *(^g_registerClass)(Class, NSString *);
@property (nonatomic, copy, readonly) UITableView *(^g_registerNib)(UINib *, NSString *);
@property (nonatomic, copy, readonly) UITableView *(^g_registerHeaderFooterClass)(Class, NSString *);
@property (nonatomic, copy, readonly) UITableView *(^g_registerHeaderFooterNib)(UINib *, NSString *);

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
