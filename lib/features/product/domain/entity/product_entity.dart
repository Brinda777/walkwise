import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String? id;
  final String? title;
  final String? description;
  final String? category;
  final int? price;
  final int? buyCount;
  final String? imageUrl;
  final String? createdAt;


  const ProductEntity({this.id, this.title, this.description, this.category, this.price, this.buyCount, this.imageUrl, this.createdAt});

  @override
  List<Object?> get props => [id, title,
        description,
        category,
        price,
        buyCount,
        imageUrl,
        createdAt
      ];
}
