import 'package:flutter/material.dart';
import '../home/index.dart';
import '../shopcar/index.dart';
import '../usertool/index.dart';
class FMBottomNavBarVC extends StatefulWidget {
  const FMBottomNavBarVC({super.key});
  @override
  FMBottomNavBarState createState() => FMBottomNavBarState();
}

class FMBottomNavBarState extends State <FMBottomNavBarVC>{
  int _currentIndex = 0;

  final List<Widget> _pageList = [
    const homeIndex(),
    const shopcarIndex(data: {},),
    const userIndex(),
  ];

  final List<BottomNavigationBarItem> _barItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
    const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: '购物车'),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar(){
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: _items(),
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  List<BottomNavigationBarItem> _items(){
    return _barItem;
  }
}