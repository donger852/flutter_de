
import 'dart:math';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shopcar/index.dart';
import 'dart:ui';
class homeIndex extends StatefulWidget{
  const homeIndex({super.key});
  @override
  _homeIndexState createState()=> _homeIndexState();
}

class _homeIndexState extends State<homeIndex> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Align(
          alignment: Alignment.center,  //标题居中
          child: Text('首页'),
        ),
      ),
      body:homelist(),
    );
  }
}
class homelist extends StatefulWidget{
  @override
  _homeListState createState()=>_homeListState();
}

class _homeListState extends State<homelist>{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Wrap(
          children:[
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: Image.network(
            "https://tashopimg.ttrans.cn/upload/9998file1659610073-547451414.png",
            fit: BoxFit.cover,
          ),
        ),
          Container(
            height: GoodsList.length*160,
            child: goodlist(),
          ),
      ]),
    );
  }
}
class goodlist extends StatefulWidget{
  const goodlist({Key? key}) : super(key: key);

  @override
  goodlistState createState()=>goodlistState();


}
class goodlistState extends State<goodlist>{
  static const src=  "https://img14.360buyimg.com/pop/jfs/t2854/110/279306627/103573/35359621/570bd2ddNd9ded481.jpg";
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        itemCount: GoodsList.length,
        itemBuilder: (BuildContext context,int index){
          return GestureDetector(
            child:Container(
              color: Colors.blue[100],
              height: 150.0,
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(bottom: 10),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FittedBox(
                      fit: BoxFit.contain,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          GoodsList[index].imageUrl,
                          width: 130,
                          height: 130,
                        ),
                      )
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10,right: 10,top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(GoodsList[index].name,textAlign: TextAlign.left,),
                          ),
                          Container(
                            margin:  const EdgeInsets.all(10),
                            alignment: Alignment.bottomLeft,
                            child: Text(GoodsList[index].price.toString()),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.all(10),
                    child: IconButton(
                      icon: const Icon(Icons.add,size: 36.0,),
                      tooltip: '按下操作$counter',
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: const Text('加购提示'),
                                content: const Text('确定要加购吗？'),
                                actions: <Widget>[
                                  CupertinoDialogAction(
                                    child: const Text('确定'),
                                    onPressed: () {
                                      print(window.physicalSize);
                                      Navigator.of(context).pop();
                                      },),
                                  CupertinoDialogAction(
                                    child: Text('取消'),
                                    isDestructiveAction: true,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      },
                                  ),
                                ],
                              );
                            });
                        },
                    ),),
                ],
              ),
            ),
          );
        });
  }
  }

