
import 'package:flutter/material.dart';
import 'package:flutter_de/src/usertool/index.dart';
import '../home/index.dart';
import '../shopcar/index.dart';
Map<String, WidgetBuilder> routesList = {
  // "Login": (context) => IndexPage(),
  // "InputUse": (context) => InputUse(),
  "home": (context) => homeIndex(),
  "shopcart": (context) => const shopcarIndex(data: {},),
  "user":(context)=>const userIndex(),
  // "FlutterWebView": (context) => FlutterWebView(),
  // "GoodsPage": (context) => GoodsPage(),
};
