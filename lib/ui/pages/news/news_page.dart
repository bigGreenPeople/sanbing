import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';
import 'package:sanbing/core/model/news_model.dart';
import 'package:sanbing/core/viewmodel/news_view_model.dart';
import 'package:sanbing/ui/pages/news/news_item.dart';
import 'package:sanbing/ui/pages/news/news_type_img.dart';

import '../../widgets/search_text_field_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class FjNewsScreen extends StatefulWidget {
  final String? _tab;

  const FjNewsScreen(this._tab, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<FjNewsScreen> createState() => _FjNewsScreenState(_tab);
}

class _FjNewsScreenState extends State<FjNewsScreen> {
  final String? _tab;

  _FjNewsScreenState(this._tab);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.0.rpx),
        SearchTextFieldWidget(
          hintText: '游戏头条搜搜看',
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          onTab: () {},
        ),
        SizedBox(height: 20.0.rpx),
        Expanded(child: const FjNewsItemList()),
      ],
    );
  }
}

class FjNewsItemList extends StatefulWidget {
  const FjNewsItemList({Key? key}) : super(key: key);

  @override
  _FjNewsItemListState createState() => _FjNewsItemListState();
}

class _FjNewsItemListState extends State<FjNewsItemList> {
  List<String> items = [
    "1",
    "2",
    "3",
  ];

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    // await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    fjNewsViewModel?.refreshPage();
    if (mounted) setState(() {});

    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    fjNewsViewModel?.add();
    if (mounted) setState(() {});

    _refreshController.loadComplete();
  }

  FjNewsViewModel? fjNewsViewModel;
  @override
  Widget build(BuildContext context) {
    fjNewsViewModel = Provider.of<FjNewsViewModel>(context);

    return Scaffold(
      body: Consumer<FjNewsViewModel>(
        builder: ((context, FjNewsViewModel newsVM, child) {
          return SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            header: const WaterDropHeader(
              refresh: SizedBox(
                width: 25.0,
                height: 25.0,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  color: Colors.red,
                ),
              ),
              complete: Icon(Icons.done),
            ),
            footer: CustomFooter(
              builder: (BuildContext context, LoadStatus? mode) {
                Widget body;
                if (mode == LoadStatus.idle) {
                  body = Text("上拉加载");
                } else if (mode == LoadStatus.loading) {
                  body = const CupertinoActivityIndicator();
                } else if (mode == LoadStatus.failed) {
                  body = Text("加载失败！点击重试！");
                } else if (mode == LoadStatus.canLoading) {
                  body = Text("松手,加载更多!");
                } else {
                  body = Text("没有更多数据了!");
                }
                return Container(
                  height: 55.0,
                  child: Center(child: body),
                );
              },
            ),
            controller: _refreshController,
            onRefresh: _onRefresh,
            onLoading: _onLoading,
            child: ListView.builder(
              itemBuilder: (c, i) {
                if (i == 0) {
                  return const FjNewsTitleImg();
                }
                return FjNewsItem(
                  newsVM.news[i],
                );
              },
              itemCount: newsVM.news.length,
            ),
          );
        }),
      ),
    );
  }
}
