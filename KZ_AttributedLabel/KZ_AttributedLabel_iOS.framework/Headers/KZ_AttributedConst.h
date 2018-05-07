//
//  KZ_AttributedConst.h
//  KZ_AttributedLabel
//
//  Created by Kieron Zhang on 2016/12/23.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#define KZ_EmojiRegular @"\\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]"
#define KZ_HttpLinkRegular @"((http[s]{0,1}|ftp)://[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)|(www.[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)"
#define KZ_PhoneNumberRegular @"\\d{3}-\\d{8}|\\d{3}-\\d{7}|\\d{4}-\\d{8}|\\d{4}-\\d{7}|1+[358]+\\d{9}|\\d{8}|\\d{7}"
#define KZ_EmailRegular @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}"
#define KZ_AtRegular @"@[\\u4e00-\\u9fa5\\w\\-]+"
#define KZ_TopicRegular @"#([\\u4e00-\\u9fa5\\w\\-]+)#"

static NSString *KZ_AttributedLabelLinkDidClickEmojiNotification = @"KZ_AttributedLabelLinkDidClickEmojiNotification";
static NSString *KZ_AttributedLabelLinkDidClickHttpURLNotification = @"KZ_AttributedLabelLinkDidClickHttpURLNotification";
static NSString *KZ_AttributedLabelLinkDidClickPhoneNumberNotification = @"KZ_AttributedLabelLinkDidClickPhoneNumberNotification";
static NSString *KZ_AttributedLabelLinkDidClickEmailNotification = @"KZ_AttributedLabelLinkDidClickEmailNotification";
static NSString *KZ_AttributedLabelLinkDidClickAtNotification = @"KZ_AttributedLabelLinkDidClickAtNotification";
static NSString *KZ_AttributedLabelLinkDidClickTopicNotification = @"KZ_AttributedLabelLinkDidClickTopicNotification";

typedef NS_OPTIONS(NSUInteger, KZ_AttributedLabelLinkType) {
    KZ_AttributedLabelLinkType_None = 0,
    KZ_AttributedLabelLinkType_Emoji = 1 << 0,
    KZ_AttributedLabelLinkType_HttpURL = 1 << 1,
    KZ_AttributedLabelLinkType_PhoneNumber = 1 << 2,
    KZ_AttributedLabelLinkType_Email = 1 << 3,
    KZ_AttributedLabelLinkType_At = 1 << 4,
    KZ_AttributedLabelLinkType_Topic = 1 << 5,
    KZ_AttributedLabelLinkType_Custom = 1 << 6,
    KZ_AttributedLabelLinkType_All = (KZ_AttributedLabelLinkType_Emoji | KZ_AttributedLabelLinkType_HttpURL | KZ_AttributedLabelLinkType_PhoneNumber | KZ_AttributedLabelLinkType_Email | KZ_AttributedLabelLinkType_At | KZ_AttributedLabelLinkType_Topic | KZ_AttributedLabelLinkType_Custom)
};
