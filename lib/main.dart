import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../src/root/RootPage.dart';
import './src/util/Global.dart';
import './src/store/provider.dart';
import 'src/tabbar/index.dart';


void main() {
  Global.init().then((e) => runApp(ChangeNotifierProvider<CounterModel>.value(
    value: CounterModel(), //value设置了默认的Counter()
    child: const RootApp(),
  )));

  SystemUiOverlayStyle systemUiOverlayStyle =
  const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  runApp(const FMBottomNavBarVC());
}

