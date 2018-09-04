# PSG_ChainedMode

```objc
pod 'PSGChainedMode'
```

相信大家使用过Masonry或者是SDAutoLayout的应该都清楚什么叫链式编程，现在很多框架也越来越多的使用链式开发思想，这里我写了一个关于OC中常用的几种控件的链式编程的分类

## <a id="UILabel"></a>UILabel
```objc
UILabel *label = UILabel
.g_init
.g_text(@"label")
.g_textColor([UIColor whiteColor])
.g_textAlignment(NSTextAlignmentCenter)
.g_numberOfLines(0)
.g_lineBreakMode(NSLineBreakByTruncatingTail)
.g_backgroundColor([UIColor redColor])
.g_size(CGSizeMake(100, 100))
.g_setPositionAtAnchorPoint(CGPointMake(100, 100), CGPointMake(0, 0))
.g_labelMaker;
[self.view addSubview:label];
```

## <a id="UIButton"></a>UIButton
```objc
UIButton *button = UIButton
.g_init
.g_title(@"button", UIControlStateNormal)
.g_titleColor([UIColor whiteColor], UIControlStateNormal)
.g_titleFont([UIFont systemFontOfSize:15.0f])
.g_addTarget(self, @selector(buttonAction:), UIControlEventTouchUpInside)
.g_size(CGSizeMake(100, 100))
.g_setPositionAtAnchorPoint(CGPointMake(100, 200), CGPointZero)
.g_buttonMaker;
[self.view addSubview:button];
```

## <a id="UITableView"></a>UITableView
```objc
UITableView *tableView = UITableView
.g_initFrameStyle(CGRectZero, UITableViewStyleGrouped)
.g_delegate(self)
.g_dataSource(self)
.g_separatorStyle(UITableViewCellSeparatorStyleNone)
.g_scrollsToTop(YES)
.g_size(self.view.frame.size)
.g_setPositionAtAnchorPoint(CGPointZero, CGPointZero)
.g_tableViewMaker;
[self.view addSubview:tableView];
```

## <a id="UICollectionView"></a>UICollectionView
```objc
UICollectionView *collectionView = UICollectionView
.g_initFrameLayout(self.view.frame, UICollectionViewFlowLayout
.g_init
.g_itemSize(CGSizeMake(50, 50))
.g_scrollDirection(UICollectionViewScrollDirectionVertical)
.g_minimumLineSpacing(5)
.g_minimumInteritemSpacing(5)
.g_sectionInset(UIEdgeInsetsMake(5, 5, 5, 5)))
.g_delegate(self)
.g_dataSource(self)
.g_scrollEnabled(YES)
.g_showsVerticalScrollIndicator(NO)
.g_showsHorizontalScrollIndicator(NO)
.g_bounces(NO)
.g_alwaysBounceVertical(YES)
.g_alwaysBounceHorizontal(NO)
.g_backgroundColor([UIColor whiteColor])
.g_collectionViewMaker;
[self.view addSubview:collectionView];
```

## <a id="UITextField"></a>UITextField
```objc
UITextField *textFiled = UITextField
.g_init
.g_textColor([UIColor blackColor])
.g_font([UIFont systemFontOfSize:15])
.g_borderStyle(UITextBorderStyleNone)
.g_clearButtonMode(UITextFieldViewModeAlways)
.g_leftView(UILabel
.g_init
.g_text(@"label")
.g_textColor([UIColor blackColor])
.g_textAlignment(NSTextAlignmentCenter)
.g_sizeToFit)
.g_leftViewMode(UITextFieldViewModeAlways)
.g_placeholder(@"textFiled")
.g_delegate(self)
.g_rightView(nil)
.g_rightViewMode(UITextFieldViewModeAlways)
.g_clearsOnBeginEditing(YES)
.g_secureTextEntry(YES)
.g_backgroundColor([UIColor whiteColor])
.g_size(CGSizeMake(self.view.frame.size.width, 40.0f))
.g_setPositionAtAnchorPoint(CGPointMake(0, self.view.frame.size.height / 2),CGPointMake(0, 0.5))
.g_textFieldMaker;
[self.view addSubview:textFiled];
```
