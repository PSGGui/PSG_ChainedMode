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

- (UITextView *(^)(UITextAutocapitalizationType))g_autocapitalizationType;
- (UITextView *(^)(UITextAutocorrectionType))g_autocorrectionType;
- (UITextView *(^)(UITextSpellCheckingType))g_spellCheckingType NS_AVAILABLE_IOS(5_0);
- (UITextView *(^)(UITextSmartQuotesType))g_smartQuotesType NS_AVAILABLE_IOS(11_0);
- (UITextView *(^)(UITextSmartDashesType))g_smartDashesType NS_AVAILABLE_IOS(11_0);
- (UITextView *(^)(UITextSmartInsertDeleteType))g_smartInsertDeleteType NS_AVAILABLE_IOS(11_0);
- (UITextView *(^)(UIKeyboardType))g_keyboardType;
- (UITextView *(^)(UIKeyboardAppearance))g_keyboardAppearance;
- (UITextView *(^)(UIReturnKeyType))g_returnKeyType;
- (UITextView *(^)(BOOL))g_enablesReturnKeyAutomatically;
- (UITextView *(^)(BOOL))g_secureTextEntry;
- (UITextView *(^)(UITextContentType))g_textContentType NS_AVAILABLE_IOS(10_0);

#pragma mark - UIContentSizeCategoryAdjusting
- (UITextView *(^)(BOOL))g_adjustsFontForContentSizeCategory NS_AVAILABLE_IOS(10_0);

#pragma mark - textView
- (UITextView *(^)(id<UITextViewDelegate>))g_delegate;
- (UITextView *(^)(NSString *))g_text;
- (UITextView *(^)(UIColor *))g_textColor;
- (UITextView *(^)(UIFont *))g_font;
- (UITextView *(^)(NSTextAlignment))g_textAlignment;
- (UITextView *(^)(NSRange))g_selectedRange;
- (UITextView *(^)(BOOL))g_editable;
- (UITextView *(^)(BOOL))g_selectable NS_AVAILABLE_IOS(7_0);

- (UITextView *(^)(UIDataDetectorTypes))g_dataDetectorTypes NS_AVAILABLE_IOS(3_0);
- (UITextView *(^)(BOOL))g_allowsEditingTextAttributes NS_AVAILABLE_IOS(6_0);
- (UITextView *(^)(NSAttributedString *))g_attributedText NS_AVAILABLE_IOS(6_0);
- (UITextView *(^)(NSDictionary<NSString *, id> *))g_typingAttributes NS_AVAILABLE_IOS(6_0);
- (UITextView *(^)(BOOL))g_clearsOnInsertion NS_AVAILABLE_IOS(6_0);

- (UITextView *(^)(UIEdgeInsets))g_textContainerInset;
- (UITextView *(^)(NSDictionary<NSString *, id> *))g_linkTextAttributes NS_AVAILABLE_IOS(7_0);
- (UITextView *(^)(UIView *))g_inputAccessoryView;

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
