//
//  FullLabelViewController.m
//  KZ_AttributedLabel_iOS
//
//  Created by Kieron Zhang on 2018/5/7.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import "FullLabelViewController.h"
#import <KZ_AttributedLabel_iOS/KZ_AttributedLabel.h>

@interface FullLabelViewController () <KZ_AttributedLabelDelegate>

@end

@implementation FullLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    labelScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:labelScrollView];
    
    KZ_AttributedLabel *label = [[KZ_AttributedLabel alloc] initWithFrame:labelScrollView.bounds];
    label.delegate = self;
    label.supportRichText = YES;
    label.text = @"<p> 现在说起伊能静，好像很久没有她的消息了，又好像一直有她的消息。虽然近几年没怎么工作，但微博却一直持续曝光，讲述自己生活中的点点滴滴。2015年，伊能静和小10岁的秦昊在普吉岛的沙滩上举办海岛婚礼！ </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/c23d563edbc9477fb06b29b258f8ee6c.jpg\" /> <p> 这段婚姻也一直不被外界看好，因为是姐弟恋，而秦昊的名气也不如伊能静大，许多人在秦昊没和伊能静结婚之前，根本不知道秦昊是谁。伊能静带着女儿参加节目，秦昊露面的一举一动也都被无限放大，她们的夫妻关系也不被很多人看好。然而伊能静却乐在其中，虽然偶尔会抱怨，但整体两人感情还是好的吧 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/f30688216ba5bb6666357150ff1398eb.jpg\" /> <p> 伊能静更博的频率很是频繁，29日，伊能静转发微博，微博内容是秦昊终于火了，终于得到了认可。伊能静是这样说的，认识第二年的时候，秦昊说有几个剧本，钱挺多的，愿意去接不是因为剧本好，而是赚钱给伊能静买房子；但是伊能静却鼓励秦昊去拿戛纳的大奖，一起变得更好。如今秦昊终于凭借自己的努力做到了被大家认可，伊能静赶快终于可以你赚钱，我如花 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/d8badfeddb528071246faef03cead4c1.jpg\" /> <p> 79年出生的秦昊，为人很低调，毕业于中央戏剧学院，他的同学都是章子怡，梅婷，刘烨，秦海璐，胡静，曾黎，袁泉这样的大咖 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/5f37dcfeecd6a2ffb0c9f7db5d2350e5.jpg\" /> <p> 但他却一直默默无闻，秦昊出演过《推拿》、《青红》《火锅英雄》、《无证之罪》等，演技偶都可圈可点。他也曾凭借这些作品多次被国际上的电影节提名了最佳男主角，但始终都无缘 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/fb637cc48354ac7ddf2b7cca01aacfe5.jpg\" /> <p> 直到现在随着网剧《无证之罪》的热播，秦昊在剧中的表现实在太亮眼，受到一致好评。秦昊饰演的严良，是一个因犯错被贬到派出所蛰伏八年的片警，因破“雪人案”需要，重回刑警队。秦昊将人物塑造的十分丰富 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/a09f73fe746d2e96e36ae520e5c49e71.jpg\" /> <p> 这部剧里还有小姨妈唐悠悠哦！邓家佳在本剧中的表现也很有突破 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/07580239f585cd2ae7716228d0b761d9.jpg\" /> <p> 秦昊这么多年不火，还坚持演戏，因为他一直都知道，当他所有的积累爆发， 他能演的角色就能无线的放大 。秦昊这么多年一直不炒作，即使是和伊能静结婚，也尽量减少自己的曝光度，是一个好的演员 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/9ec9c0553eda86105b2bdb937526d92e.jpg\" /> <p> 秦昊能取得这么大的成绩，最开心的就是伊能静了吧 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/9aa8a9c77663d7f6c77c515f1ca858c5.jpg\" /> <p> 毕竟伊能静可是秦昊的头号迷妹迷妹，每天在微博打卡更新关于《无证之罪》的内容，也是实力宠夫。 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/8afbdf288c1bbb2fc89691bc5ba61d0a.jpg\" /> <p> 现在翻看伊能静的微博基本都是老公孩子的消息了，学习料理日子过得也是十分惬意 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/5864e4ab37324ec3d016801d350ef641.jpg\" /> <p> 给米粒做各种各样的好吃的饭菜 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/83d4228258b1346d5d02f7f9d67ad6e9.jpg\" /> <p> 和婆婆一起追秦昊的新剧 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/47d91965e0598859534e968aa2b9867f.jpg\" /> <p> 偶尔也会多愁善感，伊能静表示，只想着秦先生工作顺利，越来越火，但最重要的还是平安健康。儿子问伊能静“妈妈你现在都不工作，会不会很无聊，”伊能静却表示妈妈现在只想做饭给孩子们吃，让老人家享受天伦之乐，家人永远是第一位的。 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/53fa6642edb06b77e6571ed82d188369.jpg\" /> <p> 看来伊能静是以家庭为重心的，除了事业以外，生活更重要一些。也常常来微博发牢骚，和粉丝们互动 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/e04a2f22685e2007346e99f0ad9050fd.jpg\" /> <p> 伊能静和网友互动 </p> <img src=\"http://oc4y9xroj.bkt.clouddn.com/14986188e72ae5e5aeab937b818b614d.jpg\" /> <p> 现在的伊能静一直知道自己要的是什么，她要守护好自己的家，帮秦昊照顾好孩子老人，而秦昊只需要好好的打拼事业。你来赚钱我来花，这样很幸福 </p> <p> 本文来源：腾讯娱乐 </p>";
    [labelScrollView addSubview:label];
    
    CGSize size = [label sizeThatFits:CGSizeMake(CGRectGetWidth(labelScrollView.bounds), CGFLOAT_MAX)];
    label.frame = CGRectMake(0, 0, size.width, size.height);
    labelScrollView.contentSize = CGSizeMake(labelScrollView.contentSize.width, size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
