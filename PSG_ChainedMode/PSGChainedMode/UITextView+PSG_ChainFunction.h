//
//  UITextView+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (PSG_ChainFunction)

+ (UITextView *)g_init;

- (UIView *)g_viewMaker;

- (UIScrollView *)g_scrollMaker;

#pragma mark - UITextInputTraits

@property (nonatomic, copy, readonly) UITextView *(^g_autocapitalizationType)(UITextAutocapitalizationType);
@property (nonatomic, copy, readonly) UITextView *(^g_autocorrectionType)(UITextAutocorrectionType);
@property (nonatomic, copy, readonly) UITextView *(^g_spellCheckingType)(UITextSpellCheckingType) NS_AVAILABLE_IOS(5_0);
@property (nonatomic, copy, readonly) UITextView *(^g_smartQuotesType)(UITextSmartQuotesType) NS_AVAILABLE_IOS(11_0);
@property (nonatomic, copy, readonly) UITextView *(^g_smartDashesType)(UITextSmartDashesType) NS_AVAILABLE_IOS(11_0);
@property (nonatomic, copy, readonly) UITextView *(^g_smartInsertDeleteType)(UITextSmartInsertDeleteType) NS_AVAILABLE_IOS(11_0);
@property (nonatomic, copy, readonly) UITextView *(^g_keyboardType)(UIKeyboardType);
@property (nonatomic, copy, readonly) UITextView *(^g_keyboardAppearance)(UIKeyboardAppearance);
@property (nonatomic, copy, readonly) UITextView *(^g_returnKeyType)(UIReturnKeyType);
@property (nonatomic, copy, readonly) UITextView *(^g_enablesReturnKeyAutomatically)(BOOL);
@property (nonatomic, copy, readonly) UITextView *(^g_secureTextEntry)(BOOL);
@property (nonatomic, copy, readonly) UITextView *(^g_textContentType)(UITextContentType) NS_AVAILABLE_IOS(10_0);

#pragma mark - UIContentSizeCategoryAdjusting
@property (nonatomic, copy, readonly) UITextView *(^g_adjustsFontForContentSizeCategory)(BOOL) NS_AVAILABLE_IOS(10_0);

#pragma mark - textView
@property (nonatomic, copy, readonly) UITextView *(^g_delegate)(id<UITextViewDelegate>);
@property (nonatomic, copy, readonly) UITextView *(^g_text)(NSString *);
@property (nonatomic, copy, readonly) UITextView *(^g_textColor)(UIColor *);
@property (nonatomic, copy, readonly) UITextView *(^g_font)(UIFont *);
@property (nonatomic, copy, readonly) UITextView *(^g_textAlignment)(NSTextAlignment);
@property (nonatomic, copy, readonly) UITextView *(^g_selectedRange)(NSRange);
@property (nonatomic, copy, readonly) UITextView *(^g_editable)(BOOL);
@property (nonatomic, copy, readonly) UITextView *(^g_selectable)(BOOL) NS_AVAILABLE_IOS(7_0);

@property (nonatomic, copy, readonly) UITextView *(^g_dataDetectorTypes)(UIDataDetectorTypes) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) UITextView *(^g_allowsEditingTextAttributes)(BOOL) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITextView *(^g_attributedText)(NSAttributedString *) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITextView *(^g_typingAttributes)(NSDictionary<NSString *, id> *) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITextView *(^g_clearsOnInsertion)(BOOL) NS_AVAILABLE_IOS(6_0);

@property (nonatomic, copy, readonly) UITextView *(^g_textContainerInset)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UITextView *(^g_linkTextAttributes)(NSDictionary<NSString *, id> *) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) UITextView *(^g_inputAccessoryView)(UIView *);

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
