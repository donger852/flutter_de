import 'dart:convert';

import 'package:flutter/material.dart';
import '../model/goodsmodel.dart';

class shopcarIndex extends StatefulWidget{
  final Map<String, dynamic> data;
  const shopcarIndex({
    // required Key key,
    required this.data,
  }) : super(key: null);
  @override
  _shopcarIndexState createState()=> _shopcarIndexState();

}
class _shopcarIndexState extends State<shopcarIndex> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Align(
          alignment: Alignment.center,  //标题居中
          child: Text('购物车'),
        ),
      ),
      body: shopcarList()
    );
  }
  }
final List<Goods> GoodsList = [
   const Goods(
      name:'ddd1',
      imageUrl:'https://img2.baidu.com/it/u=1194106170,1415717776&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
       price: 10,),
  const Goods(
      name:'ddd2',
      imageUrl:'https://img1.baidu.com/it/u=1641504963,335751020&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=486',
      price: 10),
  const Goods(
      name:'ddd2',
      imageUrl:'https://img0.baidu.com/it/u=367288874,1765773411&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=313', price: 10,),
  const Goods(
      name:'ddd3',
      imageUrl:'https://img.zcool.cn/community/01bb505b17843ca801212d57f9f65e.jpg@3000w_1l_0o_100sh.jpg', price: 10,),
  const Goods(
    name:'ddd4',
    imageUrl:'https://img2.zhiyusheng.com/upload/9998file1639990149-1383913167.jpg', price: 10,),
  const Goods(
    name:'ddd5',
    imageUrl:'https://img2.baidu.com/it/u=2578986640,852696746&fm=253&fmt=auto&app=138&f=JPEG?w=745&h=500', price: 10,),
  const Goods(
    name:'ddd6',
    imageUrl:'https://img2.baidu.com/it/u=2578986640,852696746&fm=253&fmt=auto&app=138&f=JPEG?w=745&h=500', price: 10,),
  const Goods(
    name:'ddd7',
    imageUrl:'https://img2.baidu.com/it/u=2578986640,852696746&fm=253&fmt=auto&app=138&f=JPEG?w=745&h=500', price: 10,),
  const Goods(
    name:'ddd8',
    imageUrl:'https://img2.baidu.com/it/u=2578986640,852696746&fm=253&fmt=auto&app=138&f=JPEG?w=745&h=500', price: 10,),
  const Goods(
    name:'ddd9',
    imageUrl:'https://img2.baidu.com/it/u=2578986640,852696746&fm=253&fmt=auto&app=138&f=JPEG?w=745&h=500', price: 10,),
  const Goods(
    name:'ddd10',
    imageUrl:'https://img2.baidu.com/it/u=2578986640,852696746&fm=253&fmt=auto&app=138&f=JPEG?w=745&h=500', price: 10,),
  const Goods(
    name:'ddd11',
    imageUrl:'https://img2.baidu.com/it/u=2578986640,852696746&fm=253&fmt=auto&app=138&f=JPEG?w=745&h=500', price: 10,),

];
class shopcarList extends StatefulWidget{
  @override
  shopcarcellIndex createState()=>shopcarcellIndex();
}
class shopcarcellIndex extends State<shopcarList>{
  static const src=  "https://img2.zhiyusheng.com/upload/9998file1639990149-1383913167.jpg";
  var sum = 0;
  @override
  Widget build(BuildContext context){
    return  ListView.builder(
        itemCount: GoodsList.length,
        itemBuilder: (BuildContext context,int index){
          return GestureDetector(
            child:Container(
              height: 150.0,
              padding: const EdgeInsets.only(left: 10,right: 10),
              margin: const EdgeInsets.all(10),
              color: Colors.grey[200],
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FittedBox(
                      fit: BoxFit.cover,
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
                            // color: Colors.deepPurple,
                            child: Text(GoodsList[index].price.toString()),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
                      padding: const EdgeInsets.only(top: 10,bottom: 10 ),
                      child:GestureDetector(
                        onTap:(){
                          print('数量+1');
                          },
                        child: Text('数量：${GoodsList[index].price}'),
                      )
                  ),
                ],
              ),
            ),
            onTap: (){
              print('数量+1');
            },
          );
        });

  }
}
