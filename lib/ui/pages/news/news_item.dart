import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';
import 'package:sanbing/ui/pages/news/item/news_item_title.dart';
import 'item/news_item_content.dart';
import 'item/news_item_op.dart';

class FjNewsItem extends StatefulWidget {
  const FjNewsItem({Key? key}) : super(key: key);

  @override
  State<FjNewsItem> createState() => _FjNewsItemState();
}

class _FjNewsItemState extends State<FjNewsItem> {
  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.only(top: 20.rpx),
      child: Column(
        children: [
          FjNewsItemTitle("黑暗之魂",logo: "assets/img/steam.png"),
          Divider(
            height: 10.0.rpx,
            color: Colors.grey,
          ),
          FjNewsItemContent(
              "昨天我们报道过，有四张据称是《寂静岭》系列重启作品的泄露截图现身网络，引发玩家的猜测。而且早已卷入《寂静岭》开发传闻的Bloober Team今日与索尼签下新版权与销售协议，更是为《寂静岭》新作的传言增加了几分可信度。",
              image: Image.asset(
                "assets/img/game_content.png",
                fit: BoxFit.cover,
              )),
          buildBottom()
        ],
      ),
    );
  }

  ///创建底部布局
  Padding buildBottom() {
    return Padding(
      padding: EdgeInsets.only(
          top: 15.0.rpx, bottom: 15.0.rpx, left: 50.0.rpx, right: 50.0.rpx),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FjNewsItemOp(
            "19",
            icon: Icons.favorite_border,
          ),
          FjNewsItemOp(
            "19",
            icon: Icons.textsms_outlined,
          ),
          FjNewsItemOp(
            "4",
            icon: Icons.star_border,
          ),
          FjNewsItemOp(
            "分享",
            icon: Icons.share_outlined,
          ),
        ],
      ),
    );
  }
}
