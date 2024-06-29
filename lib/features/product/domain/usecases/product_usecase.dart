import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/core/failure/failure.dart';
import 'package:walkwise/features/product/domain/entity/product_entity.dart';
import 'package:walkwise/features/product/domain/repository/product_repository.dart';

final productUsecaseProvider = Provider<ProductUsecase>(
    (ref) => ProductUsecase(productRepository: ref.read(productRepositoryProvider)));

class ProductUsecase {
  final IProductRepository productRepository;
  ProductUsecase({required this.productRepository});   //dependency injection

  Future<Either<Failure, List<ProductEntity>>> getAllProducts(int page) {
    return productRepository.getAllProducts(page);
  }
}
