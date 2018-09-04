//
//  UITextField+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UITextField+PSG_ChainFunction.h"

@implementation UITextField (PSG_ChainFunction)

+ (UITextField *)g_init {
    return [[UITextField alloc] init];
}

- (UIView *)g_viewMaker {
    return (UIView *)self;
}

- (UIControl *)g_controlMaker {
    return (UIControl *)self;
}

#pragma mark - UITextInputTraits

- (UITextField *(^)(UITextAutocapitalizationType))g_autocapitalizationType {
    return ^(UITextAutocapitalizationType autocapitalizationType) {
        self.autocapitalizationType = autocapitalizationType;
        return self;
    };
}
- (UITextField *(^)(UITextAutocorrectionType))g_autocorrectionType {
    return ^(UITextAutocorrectionType autocorrectionType) {
        self.autocorrectionType = autocorrectionType;
        return self;
    };
}
- (UITextField *(^)(UITextSpellCheckingType))g_spellCheckingType NS_AVAILABLE_IOS(5_0) {
    return ^(UITextSpellCheckingType spellCheckingType) {
        self.spellCheckingType = spellCheckingType;
        return self;
    };
}
- (UITextField *(^)(UITextSmartQuotesType))g_smartQuotesType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartQuotesType smartQuotesType) {
        self.smartQuotesType = smartQuotesType;
        return self;
    };
}
- (UITextField *(^)(UITextSmartDashesType))g_smartDashesType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartDashesType smartDashesType) {
        self.smartDashesType = smartDashesType;
        return self;
    };
}
- (UITextField *(^)(UITextSmartInsertDeleteType))g_smartInsertDeleteType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartInsertDeleteType smartInsertDeleteType) {
        self.smartInsertDeleteType = smartInsertDeleteType;
        return self;
    };
}
- (UITextField *(^)(UIKeyboardType))g_keyboardType {
    return ^(UIKeyboardType keyboardType) {
        self.keyboardType = keyboardType;
        return self;
    };
}
- (UITextField *(^)(UIKeyboardAppearance))g_keyboardAppearance {
    return ^(UIKeyboardAppearance keyboardAppearance) {
        self.keyboardAppearance = keyboardAppearance;
        return self;
    };
}
- (UITextField *(^)(UIReturnKeyType))g_returnKeyType {
    return ^(UIReturnKeyType returnKeyType) {
        self.returnKeyType = returnKeyType;
        return self;
    };
}
- (UITextField *(^)(BOOL))g_enablesReturnKeyAutomatically {
    return ^(BOOL enablesReturnKeyAutomatically) {
        self.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically;
        return self;
    };
}
- (UITextField *(^)(BOOL))g_secureTextEntry {
    return ^(BOOL secureTextEntry) {
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}
- (UITextField *(^)(UITextContentType))g_textContentType NS_AVAILABLE_IOS(10_0) {
    return ^(UITextContentType textContentType) {
        self.textContentType = textContentType;
        return self;
    };
}

#pragma mark - UIContentSizeCategoryAdjusting

- (UITextField *(^)(BOOL))g_adjustsFontForContentSizeCategory NS_AVAILABLE_IOS(10_0) {
    return ^(BOOL adjustsFontForContentSizeCategory) {
        self.adjustsFontForContentSizeCategory = adjustsFontForContentSizeCategory;
        return self;
    };
}

#pragma mark - textField

- (UITextField *(^)(NSString *))g_text {
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}
- (UITextField *(^)(NSAttributedString *))g_attributedText {
    return ^(NSAttributedString *attributedText) {
        self.attributedText = attributedText;
        return self;
    };
}
- (UITextField *(^)(UIColor *))g_textColor {
    return ^(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}
- (UITextField *(^)(UIFont *))g_font {
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}
- (UITextField *(^)(NSTextAlignment))g_textAlignment {
    return ^(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}
- (UITextField *(^)(UITextBorderStyle))g_borderStyle {
    return ^(UITextBorderStyle borderStyle) {
        self.borderStyle = borderStyle;
        return self;
    };
}
- (UITextField *(^)(NSDictionary<NSString *, id> *))g_defaultTextAttributes {
    return ^(NSDictionary<NSString *, id> *defaultTextAttributes) {
        self.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}
- (UITextField *(^)(NSString *))g_placeholder {
    return ^(NSString * placeholder) {
        self.placeholder = placeholder;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *))g_attributedPlaceholder {
    return ^(NSAttributedString * attributedPlaceholder) {
        self.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}
- (UITextField *(^)(BOOL))g_clearsOnBeginEditing {
    return ^(BOOL clearsOnBeginEditing) {
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}
- (UITextField *(^)(BOOL))g_adjustsFontSizeToFitWidth {
    return ^(BOOL adjustsFontSizeToFitWidth) {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}
- (UITextField *(^)(id<UITextFieldDelegate>))g_delegate {
    return ^(id<UITextFieldDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}
- (UITextField *(^)(UIImage *))g_background {
    return ^(UIImage * background) {
        self.background = background;
        return self;
    };
}
- (UITextField *(^)(UIImage *))g_disabledBackground {
    return ^(UIImage * disabledBackground) {
        self.disabledBackground = disabledBackground;
        return self;
    };
}

- (UITextField *(^)(BOOL))g_allowsEditingTextAttributes {
    return ^(BOOL allowsEditingTextAttributes) {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}
- (UITextField *(^)(NSDictionary<NSString *, id> *))g_typingAttributes {
    return ^(NSDictionary<NSString *, id> * typingAttributes) {
        self.typingAttributes = typingAttributes;
        return self;
    };
}
- (UITextField *(^)(UITextFieldViewMode))g_clearButtonMode {
    return ^(UITextFieldViewMode clearButtonMode) {
        self.clearButtonMode = clearButtonMode;
        return self;
    };
}
- (UITextField *(^)(UIView *))g_leftView {
    return ^(UIView * leftView) {
        self.leftView = leftView;
        return self;
    };
}
- (UITextField *(^)(UITextFieldViewMode))g_leftViewMode {
    return ^(UITextFieldViewMode leftViewMode) {
        self.leftViewMode = leftViewMode;
        return self;
    };
}
- (UITextField *(^)(UIView *))g_rightView {
    return ^(UIView * rightView) {
        self.rightView = rightView;
        return self;
    };
}
- (UITextField *(^)(UITextFieldViewMode))g_rightViewMode {
    return ^(UITextFieldViewMode rightViewMode) {
        self.rightViewMode = rightViewMode;
        return self;
    };
}
- (UITextField *(^)(BOOL))g_clearsOnInsertion {
    return ^(BOOL clearsOnInsertion) {
        self.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}

- (UITextField *(^)(id, SEL, UIControlEvents))g_targetAction {
    return ^(id target, SEL selector ,UIControlEvents event) {
        [self  addTarget:target action:selector forControlEvents:event];
        return self;
    };
}

- (UITextField *(^)(UIView *))g_inputAccessoryView {
    return ^(UIView *inputAccessoryView) {
        self.inputAccessoryView = inputAccessoryView;
        return self;
    };
}

- (UITextField *(^)(UIView *))g_inputView {
    return ^(UIView *inputView) {
        self.inputView = inputView;
        return self;
    };
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

@end
