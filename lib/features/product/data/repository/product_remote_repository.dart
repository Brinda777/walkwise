import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/core/failure/failure.dart';
import 'package:walkwise/features/product/data/datasource/remote/product_remote_datasource.dart';
import 'package:walkwise/features/product/domain/entity/product_entity.dart';
import 'package:walkwise/features/product/domain/repository/product_repository.dart';

final productRemoteRepositoryProvider = Provider<IProductRepository>((ref) {
  return ProductRemoteRepository(
      productRemoteDataSource: ref.read(productRemoteDatasourceProvider));
});

class ProductRemoteRepository implements IProductRepository {   //IProductRepository is abstract class here
  final ProductRemoteDatasource productRemoteDataSource;
  ProductRemoteRepository({required this.productRemoteDataSource});
 

  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts(int page) {   //real time ma navayera kehi time pachi gayera data aaucha ki vanera future use gareko
    return productRemoteDataSource.getAllProducts(page);
  }
}
