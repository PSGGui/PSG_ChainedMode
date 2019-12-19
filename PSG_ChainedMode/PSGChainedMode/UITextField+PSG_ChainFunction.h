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

@property (nonatomic, copy, readonly) UITextField *(^g_autocapitalizationType)(UITextAutocapitalizationType);
@property (nonatomic, copy, readonly) UITextField *(^g_autocorrectionType)(UITextAutocorrectionType);
@property (nonatomic, copy, readonly) UITextField *(^g_spellCheckingType)(UITextSpellCheckingType) NS_AVAILABLE_IOS(5_0);
@property (nonatomic, copy, readonly) UITextField *(^g_smartQuotesType)(UITextSmartQuotesType) NS_AVAILABLE_IOS(11_0);
@property (nonatomic, copy, readonly) UITextField *(^g_smartDashesType)(UITextSmartDashesType) NS_AVAILABLE_IOS(11_0);
@property (nonatomic, copy, readonly) UITextField *(^g_smartInsertDeleteType)(UITextSmartInsertDeleteType) NS_AVAILABLE_IOS(11_0);
@property (nonatomic, copy, readonly) UITextField *(^g_keyboardType)(UIKeyboardType);
@property (nonatomic, copy, readonly) UITextField *(^g_keyboardAppearance)(UIKeyboardAppearance);
@property (nonatomic, copy, readonly) UITextField *(^g_returnKeyType)(UIReturnKeyType);
@property (nonatomic, copy, readonly) UITextField *(^g_enablesReturnKeyAutomatically)(BOOL);
@property (nonatomic, copy, readonly) UITextField *(^g_secureTextEntry)(BOOL);
@property (nonatomic, copy, readonly) UITextField *(^g_textContentType)(UITextContentType) NS_AVAILABLE_IOS(10_0);

#pragma mark - UIContentSizeCategoryAdjusting
@property (nonatomic, copy, readonly) UITextField *(^g_adjustsFontForContentSizeCategory)(BOOL) NS_AVAILABLE_IOS(10_0);

#pragma mark - textField

@property (nonatomic, copy, readonly) UITextField *(^g_text)(NSString *);
@property (nonatomic, copy, readonly) UITextField *(^g_attributedText)(NSAttributedString *) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITextField *(^g_textColor)(UIColor *);
@property (nonatomic, copy, readonly) UITextField *(^g_font)(UIFont *);
@property (nonatomic, copy, readonly) UITextField *(^g_textAlignment)(NSTextAlignment);
@property (nonatomic, copy, readonly) UITextField *(^g_borderStyle)(UITextBorderStyle);
@property (nonatomic, copy, readonly) UITextField *(^g_defaultTextAttributes)(NSDictionary<NSString *, id> *);
@property (nonatomic, copy, readonly) UITextField *(^g_placeholder)(NSString *);

@property (nonatomic, copy, readonly) UITextField *(^g_attributedPlaceholder)(NSAttributedString *);
@property (nonatomic, copy, readonly) UITextField *(^g_clearsOnBeginEditing)(BOOL);
@property (nonatomic, copy, readonly) UITextField *(^g_adjustsFontSizeToFitWidth)(BOOL);
@property (nonatomic, copy, readonly) UITextField *(^g_delegate)(id<UITextFieldDelegate>);
@property (nonatomic, copy, readonly) UITextField *(^g_background)(UIImage *);
@property (nonatomic, copy, readonly) UITextField *(^g_disabledBackground)(UIImage *);

@property (nonatomic, copy, readonly) UITextField *(^g_allowsEditingTextAttributes)(BOOL) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITextField *(^g_typingAttributes)(NSDictionary<NSString *, id> *) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITextField *(^g_clearButtonMode)(UITextFieldViewMode);
@property (nonatomic, copy, readonly) UITextField *(^g_leftView)(UIView *);
@property (nonatomic, copy, readonly) UITextField *(^g_leftViewMode)(UITextFieldViewMode);
@property (nonatomic, copy, readonly) UITextField *(^g_rightView)(UIView *);
@property (nonatomic, copy, readonly) UITextField *(^g_rightViewMode)(UITextFieldViewMode);
@property (nonatomic, copy, readonly) UITextField *(^g_clearsOnInsertion)(BOOL) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) UITextField *(^g_targetAction)(id, SEL, UIControlEvents);

@property (nonatomic, copy, readonly) UITextField *(^g_inputAccessoryView)(UIView *);
@property (nonatomic, copy, readonly) UITextField *(^g_inputView)(UIView *);

#pragma mark layer
- (CALayer *)g_layerMaker;

@end
