import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sanbing/core/router/router.dart';
import 'package:sanbing/core/viewmodel/news_view_model.dart';
import 'package:sanbing/ui/shared/app_theme.dart';
import 'package:sanbing/ui/shared/size_fit.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => FjNewsViewModel())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: const Color.fromARGB(255, 57, 57, 57),
        statusBarIconBrightness: Brightness.dark));

    //初始化操作
    FjSizeFit.initialize();

    return RefreshConfiguration(
      headerBuilder: () => const MaterialClassicHeader(
        color: Colors.red,
      ),
      child: MaterialApp(
        title: '三饼',
        theme: FjAppTheme.norTheme,
        debugShowCheckedModeBanner: false,
        // 路由 dsa
        initialRoute: FjRouter.initialRoute,
        routes: FjRouter.routes,
        onGenerateRoute: FjRouter.generateRoute,
        onUnknownRoute: FjRouter.unknownRoute,
      ),
    );
  }
}
