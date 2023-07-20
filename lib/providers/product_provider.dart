import 'dart:convert';

import 'package:e_commerce_mobile_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductPorivder with ChangeNotifier {
  List<ProductModel> products = [];
  List<ProductModel> productsByCategory = [];
  String status = 'start';
  String status2 = 'start';

  Future<void> getProducts() async {
    Uri url = Uri.parse('https://dummyjson.com/products');
    http.Response response = await http.get(url);

    Map data = jsonDecode(response.body);

    List productsServer = data['products'];

    for (Map<String, dynamic> product in productsServer) {
      products.add(ProductModel.fromJson(product));
    }
    print('data has been fetched');
    status = 'done';
    notifyListeners();
  }

  Future<void> getProductsByCategory(String category) async {
    productsByCategory.clear();
    status2 = 'start';
    Uri url = Uri.parse('https://dummyjson.com/products/category/$category');
    http.Response response = await http.get(url);

    Map data = jsonDecode(response.body);

    List productsServer = data['products'];

    for (Map<String, dynamic> product in productsServer) {
      productsByCategory.add(ProductModel.fromJson(product));
    }
    print('data has been fetched');
    status2 = 'done';
    notifyListeners();
  }
}
