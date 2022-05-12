import 'package:flutter/material.dart';
import 'package:sanbing/ui/pages/main/main.dart';

class FjRouter {
  static const String initialRoute = FjMainPage.routeName;

  static final Map<String, WidgetBuilder> routes = {
    FjMainPage.routeName: (ctx) => const FjMainPage(),
  };

  // 自己扩展
  static RouteFactory get generateRoute => (settings) {
    return null;
  };

  static RouteFactory get unknownRoute => (settings) {
    return null;
  };
}
