import 'package:flutter/material.dart';
import 'package:sanbing/core/model/news_model.dart';

class FjNewsViewModel extends ChangeNotifier {
  final List<FjNewsModel> _news = [
    FjNewsModel(title: "标题一", content: "内容内容内容内容内容", createTime: "2022-02-02"),
    FjNewsModel(
        title: "标题二", content: "内容内容内容内容dassadsa内容", createTime: "2022-02-02"),
    FjNewsModel(
        title: "标题三", content: "内容内容内容内556545容内容", createTime: "2022-02-02"),
  ];

  get news {
    return _news;
  }
}
