import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:sanbing/ui/pages/main/main.dart';
import 'package:sanbing/ui/pages/news_detail/news_detail_page.dart';

class FjRouter {
  static const String initialRoute = FjMainPage.routeName;

  static final Map<String, WidgetBuilder> routes = {
    FjMainPage.routeName: (ctx) => const FjMainPage(),
    // FjNewsDetailScreen.routeName: (context) => const FjNewsDetailScreen(),
  };

  // 自己扩展
  static RouteFactory get generateRoute => (settings) {
        if (settings.name == FjNewsDetailScreen.routeName) {
          // return PageAnimationTransition(
          //     page: const FjNewsDetailScreen(),
          //     pageAnimationType: RightToLeftTransition());
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return const FjNewsDetailScreen();
            },
            settings: settings,
            transitionDuration: const Duration(milliseconds: 200),
            reverseTransitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return RightToLeftTransition()
                  .animate(context, animation, secondaryAnimation, child);
            },
          );
        }

        return null;
      };

  static RouteFactory get unknownRoute => (settings) {
        return null;
      };
}
