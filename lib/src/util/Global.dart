
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; //本地存储
// import '../service/login.dart';

class Global {
  static late SharedPreferences prefs;

  // static Profile profile = Profile();
  // 网络缓存对象
  // static NetCache netCache = NetCache();

  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  static var token;
  static var SiteTemplate;
  static var tokenData;

  // 是否为release版
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    prefs = await SharedPreferences.getInstance();
    token = prefs.getString("token");
    tokenData = prefs.getString("tokenData");
  }

}

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];
class ControlColor {
  // static const THEME_COLOR = Color.fromARGB(255, 67, 123, 243);
  // static const MaterialColor THEME_COLOR = Colors.amber;
  // static const THEME_COLOR = Colors.white;
  static const THEME_COLOR = Color(0xFFF7A62C);


}