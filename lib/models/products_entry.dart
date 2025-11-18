// To parse this JSON data, do
//
//     final productsEntry = productsEntryFromJson(jsonString);

import 'dart:convert';

ProductsEntry productsEntryFromJson(String str) => ProductsEntry.fromJson(json.decode(str));

String productsEntryToJson(ProductsEntry data) => json.encode(data.toJson());

class ProductsEntry {
  String id;
  String name;
  String description;
  int price;
  String category;
  String thumbnail;
  int soldCount;
  bool isFeatured;
  dynamic userId;

  ProductsEntry({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.thumbnail,
    required this.soldCount,
    required this.isFeatured,
    required this.userId,
  });

  factory ProductsEntry.fromJson(Map<String, dynamic> json) => ProductsEntry(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    price: json["price"],
    category: json["category"],
    thumbnail: json["thumbnail"] ?? "",
    soldCount: json["sold_count"],
    isFeatured: json["is_featured"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "price": price,
    "category": category,
    "thumbnail": thumbnail,
    "sold_count": soldCount,
    "is_featured": isFeatured,
    "user_id": userId,
  };
}
