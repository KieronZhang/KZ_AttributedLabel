//
//  ViewController.m
//  KZ_AttributedLabel_iOS
//
//  Created by Kieron Zhang on 2018/5/7.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import "FullLabelViewController.h"
#import <KZ_AttributedLabel_iOS/KZ_AttributedLabel.h>

@interface ViewController () <KZ_AttributedLabelDelegate> {
    IBOutlet KZ_AttributedLabel *label2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"FullLabel" style:UIBarButtonItemStylePlain target:self action:@selector(rightItemTapped)];
    self.navigationItem.rightBarButtonItem = rightItem;
    
    KZ_AttributedLabel *label1 = [[KZ_AttributedLabel alloc] init];
    label1.textColor = [UIColor darkGrayColor];
    label1.highlightedBackgroundColor = [UIColor lightGrayColor];
    label1.linkType = KZ_AttributedLabelLinkType_All;
    label1.underLineLinkType = KZ_AttributedLabelLinkType_HttpURL | KZ_AttributedLabelLinkType_Email;
    label1.emojiFile = @"Emoji";
    label1.delegate = self;
    label1.selectedLinkBackgroundColor = [UIColor redColor];
    label1.popMenuDictionary = @{@"复制" : @"copyText:", @"粘贴" : @"pasteText", @"自定义" : @"customText"};
    label1.text = @"真理惟一可靠的标准就[打哈欠]是永远自相符[生病][生病][生病]合。 —— 欧文13828334432 http://www.baidu.com";
    [self.view addSubview:label1];
    CGSize size1 = [label1 sizeThatFits:CGSizeMake(CGRectGetWidth(self.view.bounds) - 30, CGFLOAT_MAX)];
    label1.frame = CGRectMake(15, 80, size1.width, size1.height);
    [label1 addAttributeWithString:@"欧文" linkColor:[UIColor yellowColor] underLine:YES selectBackgroundColor:[UIColor greenColor]];
    
    label2.textColor = [UIColor darkGrayColor];
    label2.highlightedBackgroundColor = [UIColor lightGrayColor];
    label2.linkType = KZ_AttributedLabelLinkType_All;
    label2.underLineLinkType = KZ_AttributedLabelLinkType_HttpURL | KZ_AttributedLabelLinkType_Email;
    label2.emojiFile = @"Emoji";
    label2.delegate = self;
    label2.selectedLinkBackgroundColor = [UIColor redColor];
    label2.popMenuDictionary = @{@"复制" : @"copyText:", @"粘贴" : @"pasteText", @"自定义" : @"customText"};
    
    KZ_AttributedLabel *label3 = [[KZ_AttributedLabel alloc] init];
    label3.delegate = self;
    label3.supportRichText = YES;
    label3.text = @"<html><title>HTML</title><style type=\"text/css\"><!--.STYLE1 {font-family: \"宋体\";font-size: 40;}.body1{text-decoration: underline;}--></style></head><body><p class=\"STYLE1\"><strong>我</strong>    <em>的</em><strong><font class=\"body1\">第</font></strong><br />一个HTML程序</p></body></html>";
    label3.popMenuDictionary = @{@"复制" : @"copyText:", @"粘贴" : @"pasteText", @"自定义" : @"customText"};
    [self.view addSubview:label3];
    CGSize size3 = [label3 sizeThatFits:CGSizeMake(CGRectGetWidth(self.view.bounds) - 30, CGFLOAT_MAX)];
    label3.frame = CGRectMake(15, 400, size3.width, size3.height);
}

- (void)rightItemTapped {
    FullLabelViewController *fullLabelViewController = [[FullLabelViewController alloc] init];
    [self.navigationController pushViewController:fullLabelViewController animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:NO];
}

- (void)copyText:(KZ_AttributedLabel *)label {
    NSLog(@"复制");
}

- (void)pasteText {
    NSLog(@"粘贴");
}

- (void)customText {
    NSLog(@"自定义");
}

#pragma mark KZ_AttributedLabelDelegate
- (void)attributedLabel:(KZ_AttributedLabel *)label didClickAtString:(NSString *)string linkType:(KZ_AttributedLabelLinkType)linkType range:(NSRange)range {
    NSString *type;
    switch (linkType) {
        case KZ_AttributedLabelLinkType_Emoji:
            type = @"表情";
            break;
        case KZ_AttributedLabelLinkType_HttpURL:
            type = @"链接";
            break;
        case KZ_AttributedLabelLinkType_PhoneNumber:
            type = @"电话号码";
            break;
        case KZ_AttributedLabelLinkType_Email:
            type = @"邮箱";
            break;
        case KZ_AttributedLabelLinkType_At:
            type = @"@好友";
            break;
        case KZ_AttributedLabelLinkType_Topic:
            type = @"话题";
            break;
        default:
            type = @"未知";
            break;
    }
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"点击" message:[NSString stringWithFormat:@"点击了%@, 内容%@", type, string] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alertView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
