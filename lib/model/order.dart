import 'dart:ffi';

class Order {
  late String name;
  late int price;
  late bool instock;

  Order({
    required this.name,
    required this.price,
    required this.instock,
  });

  factory Order.fromJSON(Map<String, dynamic> json) {
    return Order(
        name: json['name'], price: json['price'], instock: json['instock']);
  }
}
