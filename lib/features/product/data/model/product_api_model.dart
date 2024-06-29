import 'package:flutter_riverpod/flutter_riverpod.dart';

///model vaneko database ko replica
import 'package:json_annotation/json_annotation.dart';
import 'package:walkwise/features/product/domain/entity/product_entity.dart';

final productApiModelProvider =
    Provider<ProductApiModel>((ref) => ProductApiModel.empty());

@JsonSerializable()
class ProductApiModel {
  @JsonKey(name: '_id')
  final String? id;
  final String? title;
  final String? description;
  final String? category;
  final int? price;
  final int? buyCount;
  final String? imageUrl;
  final String? createdAt;

  ProductApiModel(
      {this.id,
      this.title,
      this.description,
      this.category,
      this.price,
      this.buyCount,
      this.imageUrl,
      this.createdAt});
  // Empty constructor
  ProductApiModel.empty()
      : id = '',
        title = '',
        description = '',
        category = '',
        price = 0,
        buyCount = 0,
        imageUrl = '',
        createdAt = '';

  //From Json, write full code without generator
  factory ProductApiModel.fromJson(Map<String, dynamic> json) {
    return ProductApiModel(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      price: json['price'],
      buyCount: json['buyCount'],
      imageUrl: json['imageUrl'],
      createdAt: json['createdAt'],
    );
  }

  //toJson

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category':category,
      'price':price,
      'buyCount': buyCount,
      'imageUrl':imageUrl,
      'createAt': createdAt
    };
  }

  // Convert remote to entity
  ProductEntity toEntity() =>
      ProductEntity(id: id, title: title, description: description, category: category, price: price, buyCount: buyCount,imageUrl: imageUrl,createdAt: createdAt);

  //Convert entity to remote
  ProductApiModel fromEntity(ProductEntity entity) => ProductApiModel(
      id: entity.id, title: entity.title ?? '',description: entity.description, category: entity.category, price: entity.price, buyCount: entity.buyCount, imageUrl: entity.imageUrl, createdAt: entity.createdAt);

  // Convert remote list to entity list
  List<ProductEntity> toEntityList(List<ProductApiModel> models) =>
      models.map((model) => model.toEntity()).toList();
}
