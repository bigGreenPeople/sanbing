import 'package:flutter/material.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';

class FjNewsItemContent extends StatelessWidget {
  String text;
  Image image;

  FjNewsItemContent(this.text, {required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 15.0.rpx, right: 15.0.rpx, top: 5.rpx, bottom: 5.rpx),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                color: const Color.fromARGB(255, 204, 204, 204),
                fontSize: 30.0.rpx),
          ),
          SizedBox(height: 10.0.rpx),
          image
        ],
      ),
    );
  }
}
