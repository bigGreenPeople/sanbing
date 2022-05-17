import 'package:flutter/material.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';
import 'package:sanbing/core/model/news_model.dart';
import 'package:sanbing/ui/pages/comm/image_detail.dart';
import 'package:sanbing/ui/pages/news_detail/news_detail_page.dart';

class FjNewsItemContent extends StatelessWidget {
  Image image;
  FjNewsModel fjNewsModel;
  String tag;

  FjNewsItemContent(this.fjNewsModel, {required this.image,this.tag="default", Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 20.0.rpx, right: 20.0.rpx, top: 5.rpx, bottom: 5.rpx),
      child: Column(
        children: [
          GestureDetector(
            child: Text(
              fjNewsModel.content!,
              style: TextStyle(
                  color: const Color.fromARGB(255, 172, 160, 160),
                  height: 1.5,
                  fontSize: 28.0.rpx),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(FjNewsDetailScreen.routeName,
                  arguments: fjNewsModel);
            },
          ),
          SizedBox(height: 10.0.rpx),
          GestureDetector(
            child: Hero(tag: fjNewsModel.contentImgs![0]+tag, child: image),
            onTap: () {
               Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (ctx, anim1, anim2) {
                    return FadeTransition(opacity: anim1, child: FjImageDetailPage(fjNewsModel.contentImgs![0],tag: tag,));
                  }
                ));
            },
          )
        ],
      ),
    );
  }
}
