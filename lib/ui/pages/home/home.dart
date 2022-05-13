import 'package:flutter/material.dart';
import 'package:sanbing/core/extension/int_extension.dart';
import 'package:sanbing/ui/pages/home/init_home.dart';

import '../news/news_page.dart';

class FjHomeScreen extends StatelessWidget {
  const FjHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myTabs.map((e) => {Tab(text: e)}).toList();
    return DefaultTabController(
        initialIndex: 0,
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.white,
            toolbarHeight: 0.rpx,
            bottom: TabBar(
                isScrollable: true,
                tabs: myTabs.map<Tab>((e) => Tab(text: e)).toList()),
          ),
          body: TabBarView(
            children: myTabs
                .map((tab) => Center(
                      child: FjNewsScreen(tab),
                    ))
                .toList(),
          ),
        ));
  }

}
