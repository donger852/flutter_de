import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart'; //本地存储
import '../util/Global.dart';

class CounterModel with ChangeNotifier {
  var authorization; //要保存的token
  var UseData; //用户信息
  var tokenData; //token数据
  Map<String, dynamic> SiteTemplate = {}; //全局配置
  List Category = [];
  // CounterModel(this.authorization);

  void SetToken(data) async {
    //提供全局方法，设置token
    authorization = data;
    Global.token = data; //全局变量
    //本地存储
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', data);
  }

  void SetTokenData(data) async {
    tokenData = data;
    Global.tokenData = data; //全局变量
    //本地存储
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('tokenData', data);
  }

  void SetUseData(data) {
    UseData = data;
    notifyListeners(); //当数值改变后，通知所有订阅者刷新ui
  }

//全局配置
  void SetSiteTemplate(data, bool isNotify) {
    SiteTemplate = data;
    if (isNotify) {
      notifyListeners(); //当数值改变后，通知所有订阅者刷新ui
    }
  }

//商品类目
  void SetCategory(data) {
    Category = data;
  }
  get token => authorization; //提供全局get方法获取计数总值
}
