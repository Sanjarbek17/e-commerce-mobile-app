class ProductModel {
  final int id;
  final String title;
  final String imgPath;
  final int price;

  ProductModel({
    required this.id,
    required this.title,
    required this.imgPath,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      imgPath: json['thumbnail'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'thumbnail': imgPath,
      'price': price,
    };
  }
}
