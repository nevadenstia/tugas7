// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  String model;
  int pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String itemName;
  String image;
  int amount;
  String description;
  String rating;
  String reviews;

  Fields({
    required this.user,
    required this.itemName,
    required this.image,
    required this.amount,
    required this.description,
    required this.rating,
    required this.reviews,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        itemName: json["item_name"],
        image: json["image"],
        amount: json["amount"],
        description: json["description"],
        rating: json["rating"],
        reviews: json["reviews"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "item_name": itemName,
        "image": image,
        "amount": amount,
        "description": description,
        "rating": rating,
        "reviews": reviews,
      };
}
