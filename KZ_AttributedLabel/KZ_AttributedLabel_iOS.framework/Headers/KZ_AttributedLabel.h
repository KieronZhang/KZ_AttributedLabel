//
//  KZ_AttributedLabel.h
//  KZ_AttributedLabel
//
//  Created by Kieron Zhang on 2016/12/23.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KZ_AttributedModel.h"
#import "KZ_AttributedConst.h"
#import "KZ_AttributedLabelUtils.h"

@class KZ_AttributedLabel;

@protocol KZ_AttributedLabelDelegate <NSObject>

@optional
- (void)attributedLabel:(KZ_AttributedLabel *)label didClickAtString:(NSString *)string linkType:(KZ_AttributedLabelLinkType)linkType range:(NSRange)range;

@end

@interface KZ_AttributedLabel : UILabel <NSLayoutManagerDelegate>

@property (nonatomic, weak) id<KZ_AttributedLabelDelegate> delegate;
@property (nonatomic, assign) KZ_AttributedLabelLinkType linkType; //支持的形式
@property (nonatomic, assign) KZ_AttributedLabelLinkType underLineLinkType; //支持的带有下划线的type
@property (nonatomic, strong) UIColor *linkTextColor;
@property (nonatomic, strong) UIColor *selectedLinkBackgroundColor;
@property (nonatomic, strong) UIColor *highlightedBackgroundColor;
@property (nonatomic, strong) NSString *sourcesFilePath;
@property (nonatomic, strong) NSString *emojiFile; //支持的表情文件名
@property (nonatomic, strong) NSDictionary *popMenuDictionary;
@property (nonatomic, assign) BOOL supportRichText;

- (void)addAttributeWithString:(NSString *)string;
- (void)addAttributeWithString:(NSString *)string linkColor:(UIColor *)linkColor underLine:(BOOL)underLine selectBackgroundColor:(UIColor *)selectBackgroundColor;
- (void)addAttributeWithRange:(NSRange)range;
- (void)addAttributeWithRange:(NSRange)range linkColor:(UIColor *)linkColor underLine:(BOOL)underLine selectBackgroundColor:(UIColor *)selectBackgroundColor;
- (CGSize)sizeThatFits:(CGSize)size;
- (NSArray *)attributesForLinkType:(KZ_AttributedLabelLinkType)linkType;

@end
