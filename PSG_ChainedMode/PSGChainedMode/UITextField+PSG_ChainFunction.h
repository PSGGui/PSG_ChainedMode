//
//  UITextField+PSG_ChainFunction.h
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (PSG_ChainFunction)

+ (UITextField *)g_init;

- (UIView *)g_viewMaker;
- (UIControl *)g_controlMaker;

#pragma mark - UITextInputTraits

- (UITextField *(^)(UITextAutocapitalizationType))g_autocapitalizationType;
- (UITextField *(^)(UITextAutocorrectionType))g_autocorrectionType;
- (UITextField *(^)(UITextSpellCheckingType))g_spellCheckingType NS_AVAILABLE_IOS(5_0);
- (UITextField *(^)(UITextSmartQuotesType))g_smartQuotesType NS_AVAILABLE_IOS(11_0);
- (UITextField *(^)(UITextSmartDashesType))g_smartDashesType NS_AVAILABLE_IOS(11_0);
- (UITextField *(^)(UITextSmartInsertDeleteType))g_smartInsertDeleteType NS_AVAILABLE_IOS(11_0);
- (UITextField *(^)(UIKeyboardType))g_keyboardType;
- (UITextField *(^)(UIKeyboardAppearance))g_keyboardAppearance;
- (UITextField *(^)(UIReturnKeyType))g_returnKeyType;
- (UITextField *(^)(BOOL))g_enablesReturnKeyAutomatically;
- (UITextField *(^)(BOOL))g_secureTextEntry;
- (UITextField *(^)(UITextContentType))g_textContentType NS_AVAILABLE_IOS(10_0);

#pragma mark - UIContentSizeCategoryAdjusting
- (UITextField *(^)(BOOL))g_adjustsFontForContentSizeCategory NS_AVAILABLE_IOS(10_0);

#pragma mark - textField

- (UITextField *(^)(NSString *))g_text;
- (UITextField *(^)(NSAttributedString *))g_attributedText NS_AVAILABLE_IOS(6_0);
- (UITextField *(^)(UIColor *))g_textColor;
- (UITextField *(^)(UIFont *))g_font;
- (UITextField *(^)(NSTextAlignment))g_textAlignment;
- (UITextField *(^)(UITextBorderStyle))g_borderStyle;
- (UITextField *(^)(NSDictionary<NSString *, id> *))g_defaultTextAttributes;
- (UITextField *(^)(NSString *))g_placeholder;

- (UITextField *(^)(NSAttributedString *))g_attributedPlaceholder;
- (UITextField *(^)(BOOL))g_clearsOnBeginEditing;
- (UITextField *(^)(BOOL))g_adjustsFontSizeToFitWidth;
- (UITextField *(^)(id<UITextFieldDelegate>))g_delegate;
- (UITextField *(^)(UIImage *))g_background;
- (UITextField *(^)(UIImage *))g_disabledBackground;

- (UITextField *(^)(BOOL))g_allowsEditingTextAttributes NS_AVAILABLE_IOS(6_0);
- (UITextField *(^)(NSDictionary<NSString *, id> *))g_typingAttributes NS_AVAILABLE_IOS(6_0);
- (UITextField *(^)(UITextFieldViewMode))g_clearButtonMode;
- (UITextField *(^)(UIView *))g_leftView;
- (UITextField *(^)(UITextFieldViewMode))g_leftViewMode;
- (UITextField *(^)(UIView *))g_rightView;
- (UITextField *(^)(UITextFieldViewMode))g_rightViewMode;
- (UITextField *(^)(BOOL))g_clearsOnInsertion NS_AVAILABLE_IOS(6_0);
- (UITextField *(^)(id, SEL, UIControlEvents))g_targetAction;

- (UITextField *(^)(UIView *))g_inputAccessoryView;
- (UITextField *(^)(UIView *))g_inputView;

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
