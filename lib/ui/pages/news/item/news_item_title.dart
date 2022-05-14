import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';

class FjNewsItemTitle extends StatelessWidget {
  String title;
  String? logo;
  String? createTime;

  FjNewsItemTitle(this.title, {this.logo, Key? key})
      : createTime = DateFormat("yyyy-MM-dd").format(DateTime.now()),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.rpx),
      child: Row(
        children: [
          Container(
            width: 70.rpx,
            height: 70.rpx,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromRGBO(218, 218, 218, 1),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              logo!,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15.0.rpx),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              SizedBox(height: 5.0.rpx),
              Text(
                createTime!,
                style: TextStyle(
                    color: const Color.fromARGB(255, 204, 204, 204),
                    fontSize: 20.0.rpx),
              )
            ],
          ),
        ],
      ),
    );
  }
}
