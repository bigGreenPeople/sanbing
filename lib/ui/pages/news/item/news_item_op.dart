import 'package:flutter/material.dart';
import 'package:sanbing/core/extension/int_extension.dart';

class FjNewsItemOp extends StatelessWidget {
  final IconData icon;
  final String data;

  FjNewsItemOp(this.data, {this.icon = Icons.favorite_border});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color.fromARGB(255, 204, 204, 204),
        ),
        SizedBox(
          width: 10.rpx,
        ),
        Text(
          data,
          style: const TextStyle(color: Color.fromARGB(255, 204, 204, 204)),
        )
      ],
    );
  }
}
