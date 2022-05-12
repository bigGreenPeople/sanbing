import 'package:flutter/material.dart';

class FjMainPage extends StatefulWidget {
  static const String routeName = "/";

  const FjMainPage({Key? key}) : super(key: key);

  @override
  State<FjMainPage> createState() => _FjMainPageState();
}

class _FjMainPageState extends State<FjMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("main页面"),
    );
  }
}
