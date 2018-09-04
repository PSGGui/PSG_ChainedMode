//
//  UITextView+PSG_ChainFunction.m
//  YOUHUO
//
//  Created by SNICE on 2018/6/6.
//  Copyright © 2018年 G. All rights reserved.
//

#import "UITextView+PSG_ChainFunction.h"

@implementation UITextView (PSG_ChainFunction)

+ (UITextView *)g_init {
    return [[UITextView alloc] init];
}

- (UIView *)g_viewMaker {
    return (UIView *)self;
}

- (UIScrollView *)g_scrollMaker {
    return (UIScrollView *)self;
}

#pragma mark - UITextInputTraits

- (UITextView *(^)(UITextAutocapitalizationType))g_autocapitalizationType {
    return ^(UITextAutocapitalizationType autocapitalizationType) {
        self.autocapitalizationType = autocapitalizationType;
        return self;
    };
}
- (UITextView *(^)(UITextAutocorrectionType))g_autocorrectionType {
    return ^(UITextAutocorrectionType autocorrectionType) {
        self.autocorrectionType = autocorrectionType;
        return self;
    };
}
- (UITextView *(^)(UITextSpellCheckingType))g_spellCheckingType NS_AVAILABLE_IOS(5_0) {
    return ^(UITextSpellCheckingType spellCheckingType) {
        self.spellCheckingType = spellCheckingType;
        return self;
    };
}
- (UITextView *(^)(UITextSmartQuotesType))g_smartQuotesType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartQuotesType smartQuotesType) {
        self.smartQuotesType = smartQuotesType;
        return self;
    };
}
- (UITextView *(^)(UITextSmartDashesType))g_smartDashesType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartDashesType smartDashesType) {
        self.smartDashesType = smartDashesType;
        return self;
    };
}
- (UITextView *(^)(UITextSmartInsertDeleteType))g_smartInsertDeleteType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartInsertDeleteType smartInsertDeleteType) {
        self.smartInsertDeleteType = smartInsertDeleteType;
        return self;
    };
}
- (UITextView *(^)(UIKeyboardType))g_keyboardType {
    return ^(UIKeyboardType keyboardType) {
        self.keyboardType = keyboardType;
        return self;
    };
}
- (UITextView *(^)(UIKeyboardAppearance))g_keyboardAppearance {
    return ^(UIKeyboardAppearance keyboardAppearance) {
        self.keyboardAppearance = keyboardAppearance;
        return self;
    };
}
- (UITextView *(^)(UIReturnKeyType))g_returnKeyType {
    return ^(UIReturnKeyType returnKeyType) {
        self.returnKeyType = returnKeyType;
        return self;
    };
}
- (UITextView *(^)(BOOL))g_enablesReturnKeyAutomatically {
    return ^(BOOL enablesReturnKeyAutomatically) {
        self.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically;
        return self;
    };
}
- (UITextView *(^)(BOOL))g_secureTextEntry {
    return ^(BOOL secureTextEntry) {
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}
- (UITextView *(^)(UITextContentType))g_textContentType NS_AVAILABLE_IOS(10_0) {
    return ^(UITextContentType textContentType) {
        self.textContentType = textContentType;
        return self;
    };
}

#pragma mark - UIContentSizeCategoryAdjusting

- (UITextView *(^)(BOOL))g_adjustsFontForContentSizeCategory NS_AVAILABLE_IOS(10_0) {
    return ^(BOOL adjustsFontForContentSizeCategory) {
        self.adjustsFontForContentSizeCategory = adjustsFontForContentSizeCategory;
        return self;
    };
}

#pragma mark - textView

- (UITextView *(^)(id<UITextViewDelegate>))g_delegate {
    return ^(id<UITextViewDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}
- (UITextView *(^)(NSString *))g_text {
    return ^(NSString * text) {
        self.text = text;
        return self;
    };
}
- (UITextView *(^)(UIColor *))g_textColor {
    return ^(UIColor * textColor) {
        self.textColor = textColor;
        return self;
    };
}
- (UITextView *(^)(UIFont *))g_font {
    return ^(UIFont * font) {
        self.font = font;
        return self;
    };
}
- (UITextView *(^)(NSTextAlignment))g_textAlignment {
    return ^(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}
- (UITextView *(^)(NSRange))g_selectedRange {
    return ^(NSRange selectedRange) {
        self.selectedRange = selectedRange;
        return self;
    };
}
- (UITextView *(^)(BOOL))g_editable {
    return ^(BOOL editable) {
        self.editable = editable;
        return self;
    };
}
- (UITextView *(^)(BOOL))g_selectable {
    return ^(BOOL selectable) {
        self.selectable = selectable;
        return self;
    };
}

- (UITextView *(^)(UIDataDetectorTypes))g_dataDetectorTypes {
    return ^(UIDataDetectorTypes dataDetectorTypes) {
        self.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}
- (UITextView *(^)(BOOL))g_allowsEditingTextAttributes {
    return ^(BOOL allowsEditingTextAttributes) {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}
- (UITextView *(^)(NSAttributedString *))g_attributedText {
    return ^(NSAttributedString * attributedText) {
        self.attributedText = attributedText;
        return self;
    };
}
- (UITextView *(^)(NSDictionary<NSString *, id> *))g_typingAttributes {
    return ^(NSDictionary<NSString *, id> * typingAttributes) {
        self.typingAttributes = typingAttributes;
        return self;
    };
}
- (UITextView *(^)(BOOL))g_clearsOnInsertion {
    return ^(BOOL clearsOnInsertion) {
        self.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}

- (UITextView *(^)(UIEdgeInsets))g_textContainerInset {
    return ^(UIEdgeInsets textContainerInset) {
        self.textContainerInset = textContainerInset;
        return self;
    };
}
- (UITextView *(^)(NSDictionary<NSString *, id> *))g_linkTextAttributes {
    return ^(NSDictionary<NSString *, id> * linkTextAttributes) {
        self.linkTextAttributes = linkTextAttributes;
        return self;
    };
}

- (UITextView *(^)(UIView *))g_inputAccessoryView {
    return ^(UIView *inputAccessoryView) {
        self.inputAccessoryView = inputAccessoryView;
        return self;
    };
}

#pragma mark layer
- (CALayer *)g_layerMaker {
    return self.layer;
}

@end
