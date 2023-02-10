
import 'package:flutter/material.dart';

class userIndex extends StatefulWidget{
  const userIndex({super.key});

  @override
  _userIndexState createState()=> _userIndexState();
}

class _userIndexState extends State<userIndex>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Align(
          alignment: Alignment.center,  //标题居中
          child: Text('我的'),
        ),
      ),
      body:userlistState(),
    );
  }
}

class userlistState extends StatelessWidget {
  static const src=  "https://c-ssl.duitang.com/uploads/blog/202106/22/20210622154903_3c36a.jpeg";
  final data = List.generate(99999, (i) => Color(0xF000000 + 100 *i));
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
              child:Column(
                children: [
                  Container(
                    color: Colors.lightBlue[100],
                    padding: const EdgeInsets.all(10),
                      child:Row(
                        children: [
                          FittedBox(
                              fit: BoxFit.contain,
                              child:ClipOval(
                                child: Image.network(
                                  src,
                                  width: 80,
                                  height: 80,
                                ),
                              )
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 10),
                                child: const Text('zhangsan'),
                              )),
                          Expanded(
                              child:Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.only(right: 1.0),
                                child: IconButton( icon: const Icon(Icons.chevron_right,size: 36.0,), onPressed: () {  },),
                              ))
                        ],
                      )),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(left: 10),
                    height: 30,
                    child: const Text('业务功能'),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    color: Colors.white,
                    // constraints: BoxConstraints(
                    //     minWidth: 200, minHeight: 80, maxWidth: 400, maxHeight: 400),
                    height: 80,
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GridView.count(
                      crossAxisCount: 1,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1,
                      scrollDirection:Axis.horizontal,
                      children: data.map((color) =>_buildItem(color)).toList(),
                    ),
                  ),
              ],
            )
          );
  }
  Container _buildItem(Color color) =>Container(
    alignment: Alignment.center,
    width: 100,
    height: 30,
    color: color,
    child: Text(
      colorString(color),
      style: const TextStyle(color: Colors.black),
    ),
  );
  String colorString (Color color) =>"#${color.value.toRadixString(16).padLeft(8,'0').toUpperCase()}";
}
