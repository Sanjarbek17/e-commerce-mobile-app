class BasketModel {
  final int id;
  final String title;
  final int quantity;
  final int price;
  final String imgPath;
/*
"id": 59,
"title": "Spring and summershoes",
"price": 20,
"quantity": 3,
"total": 60,
"discountPercentage": 8.71,
"discountedPrice": 55
*/
  BasketModel({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
    required this.imgPath,
  });

  factory BasketModel.fromJson(Map<String, dynamic> json) {
    return BasketModel(
      id: json['id'],
      title: json['title'],
      quantity: json['quantity'],
      price: json['price'],
      imgPath: json['imgPath'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'quantity': quantity,
      'price': price,
      'imgPath': imgPath,
    };
  }
}
