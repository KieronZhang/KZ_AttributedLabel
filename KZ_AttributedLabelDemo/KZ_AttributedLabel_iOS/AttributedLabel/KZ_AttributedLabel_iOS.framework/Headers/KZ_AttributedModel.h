//
//  KZ_AttributedModel.h
//  KZ_AttributedLabel
//
//  Created by Kieron Zhang on 2016/12/23.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "KZ_AttributedConst.h"

@interface KZ_AttributedModel : NSObject

@property (nonatomic, assign) KZ_AttributedLabelLinkType linkType;
@property (nonatomic, assign) BOOL underLine;
@property (nonatomic, strong) UIColor *linkTextColor;
@property (nonatomic, strong) UIColor *selectedLinkBackgroundColor;
@property (nonatomic, assign) NSRange linkRange;
@property (nonatomic, strong) NSString *linkContent;

@end
