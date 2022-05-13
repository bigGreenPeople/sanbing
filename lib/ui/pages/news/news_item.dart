import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sanbing/core/extension/double_extension.dart';
import 'package:sanbing/core/extension/int_extension.dart';

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
          Padding(
            padding: EdgeInsets.all(10.0.rpx),
            child: Row(
              children: [
                Container(
                  width: 70.rpx,
                  height: 70.rpx,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/img/steam.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15.0.rpx),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("黑暗之魂"),
                    SizedBox(height: 5.0.rpx),
                    Text(
                      "2022年05月11日",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 204, 204, 204),
                          fontSize: 20.0.rpx),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
