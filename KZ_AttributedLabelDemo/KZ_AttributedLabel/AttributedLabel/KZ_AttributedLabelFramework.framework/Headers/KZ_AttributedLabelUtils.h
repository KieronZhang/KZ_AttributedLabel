//
//  KZ_AttributedLabelUtils.h
//  KZ_AttributedLabel
//
//  Created by Kieron Zhang on 2017/11/7.
//  Copyright © 2017年 Kieron Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KZ_AttributedLabelUtils : NSObject

+ (NSArray *)matchesText:(NSString *)text regular:(NSString *)regular;
+ (NSMutableAttributedString *)sanitizeAttributedString:(NSAttributedString *)attributedString;

+ (NSArray *)checkHTMLImage:(NSString *)htmlString;
+ (NSString *)imageURLFromHTMLString:(NSString *)htmlString;

@end
