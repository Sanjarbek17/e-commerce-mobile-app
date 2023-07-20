import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/basket_model.dart';

import 'package:http/http.dart' as http;

class BasketProvider with ChangeNotifier {
  List<BasketModel> basket = [];
  String status = 'start';

  Future<void> getBasket() async {
    Uri url = Uri.parse('https://dummyjson.com/carts/user/5');
    http.Response response = await http.get(url);

    Map data = jsonDecode(response.body);

    List products = data['carts'][0]['products'];

    for (Map product in products) {
      Uri img = Uri.parse('https://dummyjson.com/products/${product['id']}');
      http.Response imgResponse = await http.get(img);
      String imgPath = jsonDecode(imgResponse.body)['images'][0];
      basket.add(BasketModel(
        id: product['id'],
        title: product['title'],
        imgPath: imgPath,
        price: product['price'],
        quantity: product['quantity'],
        // discountPercentage: product['discountPercentage'] as double,
        // discountedPrice: product['discountedPrice'] as double,
      ));
    }
    print('data has been fetched');
    status = 'done';
    notifyListeners();
  }

  void addToBasket(BasketModel product) {
    basket.add(product);
    notifyListeners();
  }
}
