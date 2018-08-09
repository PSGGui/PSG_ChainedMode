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

- (UITableView *(^)(id <UITableViewDataSource>))g_dataSource;
- (UITableView *(^)(id <UITableViewDelegate>))g_delegate;
- (UITableView *(^)(id <UITableViewDataSourcePrefetching>))g_prefetchDataSource NS_AVAILABLE_IOS(10_0);
- (UITableView *(^)(id <UITableViewDragDelegate>))g_dragDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
- (UITableView *(^)(id <UITableViewDropDelegate>))g_dropDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

- (UITableView *(^)(CGFloat))g_rowHeight;
- (UITableView *(^)(CGFloat))g_sectionHeaderHeight;
- (UITableView *(^)(CGFloat))g_sectionFooterHeight;
- (UITableView *(^)(CGFloat))g_estimatedRowHeight NS_AVAILABLE_IOS(7_0);
- (UITableView *(^)(CGFloat))g_estimatedSectionHeaderHeight NS_AVAILABLE_IOS(7_0);
- (UITableView *(^)(CGFloat))g_estimatedSectionFooterHeight NS_AVAILABLE_IOS(7_0);
- (UITableView *(^)(UIEdgeInsets))g_separatorInset NS_AVAILABLE_IOS(7_0);
- (UITableView *(^)(UITableViewSeparatorInsetReference))g_separatorInsetReference API_AVAILABLE(ios(11.0), tvos(11.0));
- (UITableView *(^)(UIView *))g_backgroundView NS_AVAILABLE_IOS(3_2);

- (UITableView *(^)(BOOL))g_editing;
- (UITableView *(^)(BOOL))g_allowsSelection NS_AVAILABLE_IOS(3_0);
- (UITableView *(^)(BOOL))g_allowsSelectionDuringEditing;
- (UITableView *(^)(NSInteger))g_sectionIndexMinimumDisplayRowCount;
- (UITableView *(^)(UIColor *))g_sectionIndexColor NS_AVAILABLE_IOS(6_0);
- (UITableView *(^)(UIColor *))g_sectionIndexBackgroundColor NS_AVAILABLE_IOS(7_0);
- (UITableView *(^)(UIColor *))g_sectionIndexTrackingBackgroundColor NS_AVAILABLE_IOS(6_0);
- (UITableView *(^)(UITableViewCellSeparatorStyle))g_separatorStyle;
- (UITableView *(^)(UIColor *))g_separatorColor;
- (UITableView *(^)(UIVisualEffect *))g_separatorEffect NS_AVAILABLE_IOS(8_0);
- (UITableView *(^)(BOOL))g_cellLayoutMarginsFollowReadableWidth NS_AVAILABLE_IOS(9_0);
- (UITableView *(^)(BOOL))g_insetsContentViewsToSafeArea API_AVAILABLE(ios(11.0), tvos(11.0));
- (UITableView *(^)(UIView *))g_tableHeaderView;
- (UITableView *(^)(UIView *))g_tableFooterView;

- (UITableView *(^)(BOOL))g_dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

//register class ..
- (UITableView *(^)(Class, NSString *))g_registerClass;
- (UITableView *(^)(UINib *, NSString *))g_registerNib;
- (UITableView *(^)(Class, NSString *))g_registerHeaderFooterClass;
- (UITableView *(^)(UINib *, NSString *))g_registerHeaderFooterNib;

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
