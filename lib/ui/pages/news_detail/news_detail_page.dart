import 'package:flutter/material.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';
import 'package:sanbing/core/model/news_model.dart';
import 'package:sanbing/ui/pages/news/item/news_item_content.dart';
import 'package:sanbing/ui/pages/news/item/news_item_op.dart';
import 'package:sanbing/ui/pages/news/item/news_item_title.dart';

class FjNewsDetailScreen extends StatefulWidget {
  static const String routeName = "/news_detail";
  const FjNewsDetailScreen({Key? key}) : super(key: key);

  @override
  State<FjNewsDetailScreen> createState() => _FjNewsDetailState();
}

class _FjNewsDetailState extends State<FjNewsDetailScreen> {
  FjNewsModel? newsModel;

  @override
  Widget build(BuildContext context) {
    newsModel = ModalRoute.of(context)?.settings.arguments as FjNewsModel;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60.rpx,
        toolbarHeight: 85.rpx,
        elevation: 0,
        title: Text(
          "详情",
          style: TextStyle(fontSize: 35.rpx),
        ),
      ),
      body: Card(
        elevation: 0,
        margin: EdgeInsets.only(top: 20.rpx),
        child: Column(
          children: [
            FjNewsItemTitle(newsModel!.title!, logo: newsModel!.logo!),
            Divider(
              height: 10.0.rpx,
              color: Colors.grey,
            ),
            FjNewsItemContent(newsModel!,
                tag: "detail",
                image: Image.asset(
                  newsModel!.contentImgs![0],
                  fit: BoxFit.cover,
                )),
            buildBottom()
          ],
        ),
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
            newsModel!.favorcate.toString(),
            icon: Icons.favorite_border,
          ),
          FjNewsItemOp(
            newsModel!.comment.toString(),
            icon: Icons.textsms_outlined,
          ),
          FjNewsItemOp(
            newsModel!.collection.toString(),
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
