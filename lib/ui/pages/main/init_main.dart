import 'package:flutter/material.dart';
import 'package:sanbing/ui/pages/game/game.dart';
import 'package:sanbing/ui/pages/home/home.dart';

// 主页面
final List<Widget> mainPages = [
  const FjHomeScreen(),
  const FjGameScreen(),
  const FjGameScreen(),
  const FjGameScreen(),
  const FjGameScreen(),
];

//底部导航
final List<BottomNavigationBarItem> items = [
  const BottomNavigationBarItem(label: "头条", icon: Icon(Icons.home)),
  const BottomNavigationBarItem(
      label: "游戏", icon: Icon(Icons.videogame_asset_outlined)),
  const BottomNavigationBarItem(
      label: "炫图", icon: Icon(Icons.camera_alt_outlined)),
  const BottomNavigationBarItem(label: "社区", icon: Icon(Icons.groups_sharp)),
  const BottomNavigationBarItem(
      label: "我的", icon: Icon(Icons.account_box_outlined)),
];
