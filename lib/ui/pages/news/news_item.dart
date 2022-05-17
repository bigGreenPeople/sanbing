import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';
import 'package:sanbing/core/model/news_model.dart';
import 'package:sanbing/ui/pages/news/item/news_item_title.dart';
import 'item/news_item_content.dart';
import 'item/news_item_op.dart';

class FjNewsItem extends StatefulWidget {
  FjNewsModel fjNewsModel;

  FjNewsItem(this.fjNewsModel, {Key? key}) : super(key: key);

  @override
  State<FjNewsItem> createState() => _FjNewsItemState();
}

class _FjNewsItemState extends State<FjNewsItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(top: 20.rpx),
      child: Column(
        children: [
          FjNewsItemTitle(widget.fjNewsModel.title!,
              logo: widget.fjNewsModel.logo!),
          Divider(
            height: 10.0.rpx,
            color: Colors.grey,
          ),
          FjNewsItemContent(widget.fjNewsModel,
              image: Image.asset(
                widget.fjNewsModel.contentImgs![0],
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
            widget.fjNewsModel.favorcate.toString(),
            icon: Icons.favorite_border,
          ),
          FjNewsItemOp(
            widget.fjNewsModel.comment.toString(),
            icon: Icons.textsms_outlined,
          ),
          FjNewsItemOp(
            widget.fjNewsModel.collection.toString(),
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
