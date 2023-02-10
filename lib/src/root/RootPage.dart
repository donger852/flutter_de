// import 'package:';

import 'package:flutter/material.dart';
import '../tabbar/index.dart';
import '../util/Global.dart';
import '../root/index.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RootState();
  }
}
class _RootState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // builder: BotToastInit(),
      // navigatorObservers: [BotToastNavigatorObserver()],
      initialRoute: "home", //名为"home"的路由作为应用的首页
      onGenerateRoute: _routeGenerator, //路由守卫
      theme: ThemeData(
          primaryColor: ControlColor.THEME_COLOR,
          buttonTheme: const ButtonThemeData(
              buttonColor: ControlColor.THEME_COLOR,
              textTheme: ButtonTextTheme.normal)),
    );
  }
  Route _routeGenerator (RouteSettings settings){
    final name = settings.name;
    var builder = routesList[name];
    bool maintainState = true;
    builder = (context) => const FMBottomNavBarVC();
    final route = MaterialPageRoute(
        builder: builder, settings: settings, maintainState: maintainState);
    return route;
  }
}
