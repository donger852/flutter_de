import 'dart:ffi';

class Goods{
  const Goods({
    required this.imageUrl,
    required this.name,
    required this.price,

  });
  final String imageUrl;
  final String name;
  final int price;

}