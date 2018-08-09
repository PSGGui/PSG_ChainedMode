# PSG_ChainedMode

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
