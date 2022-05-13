import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';
import 'package:sanbing/ui/pages/news/news_item.dart';
import 'package:sanbing/ui/pages/news/news_type_img.dart';

import '../../widgets/search_text_field_widget.dart';

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
        const FjNewsTitleImg(),
        const FjNewsItem(),
      ],
    );
  }
}
