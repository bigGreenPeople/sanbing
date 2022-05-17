import 'package:flutter/material.dart';
import 'package:sanbing/core/model/news_model.dart';
import 'package:sanbing/core/services/news_request.dart';

class FjNewsViewModel extends ChangeNotifier {
  FjNewsViewModel() {
    // FjNewsRequest.getNewsData().then((res) {
    //   _news = res;
    // });
  }

  List<FjNewsModel> _news = [
    FjNewsModel(),
    FjNewsModel(
        title: "暗黑4",
        logo: "assets/img/steam.png",
        content:
            "Xbox和B社联合展会将于北京时间6月13凌晨1点开始，一些即将登陆Xbox主机的游戏将亮相。近日据外媒Windows Central编辑Jez Corden透露，在此次展会上将有一些有趣的游戏出现。Jez Corden有可靠的信息来源，并经常在博客上分享有关微软活动的信息。",
        createTime: "2022-02-02",
        favorcate: 23,
        comment: 110,
        collection: 12,
        contentImgs: ["assets/img/game_content.png"]),
    FjNewsModel(
        title: "暗黑4",
        logo: "assets/img/steam.png",
        content:
            "Xbox和B社联合展会将于北京时间6月13凌晨1点开始，一些即将登陆Xbox主机的游戏将亮相。近日据外媒Windows Central编辑Jez Corden透露，在此次展会上将有一些有趣的游戏出现。Jez Corden有可靠的信息来源，并经常在博客上分享有关微软活动的信息。",
        createTime: "2022-02-02",
        favorcate: 23,
        comment: 110,
        collection: 12,
        contentImgs: ["assets/img/game_content.png"]),
  ];

  List<FjNewsModel> get news {
    return _news;
  }

  void refreshPage() {
    _news = [
      FjNewsModel(),
      FjNewsModel(
          title: "暗黑4",
          logo: "assets/img/steam.png",
          content:
              "Xbox和B社联合展会将于北京时间6月13凌晨1点开始，一些即将登陆Xbox主机的游戏将亮相。近日据外媒Windows Central编辑Jez Corden透露，在此次展会上将有一些有趣的游戏出现。Jez Corden有可靠的信息来源，并经常在博客上分享有关微软活动的信息。",
          createTime: "2022-02-02",
          favorcate: 23,
          comment: 110,
          collection: 12,
          contentImgs: ["assets/img/game_content.png"]),
      FjNewsModel(
          title: "暗黑4",
          logo: "assets/img/steam.png",
          content:
              "Xbox和B社联合展会将于北京时间6月13凌晨1点开始，一些即将登陆Xbox主机的游戏将亮相。近日据外媒Windows Central编辑Jez Corden透露，在此次展会上将有一些有趣的游戏出现。Jez Corden有可靠的信息来源，并经常在博客上分享有关微软活动的信息。",
          createTime: "2022-02-02",
          favorcate: 23,
          comment: 110,
          collection: 12,
          contentImgs: ["assets/img/game_content.png"]),
    ];
  }

  void add() {
    _news.add(FjNewsModel(
        title: "标题一",
        logo: "assets/img/steam.png",
        content:
            "昨天我们报道过，有四张据称是《寂静岭》系列重启作品的泄露截图现身网络，引发玩家的猜测。而且早已卷入《寂静岭》开发传闻的Bloober Team今日与索尼签下新版权与销售协议，更是为《寂静岭》新作的传言增加了几分可信度。",
        createTime: "2022-02-02",
        favorcate: 23,
        comment: 110,
        collection: 12,
        contentImgs: ["assets/img/game_content.png"]));

    notifyListeners();
  }
}
