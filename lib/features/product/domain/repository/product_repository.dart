import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/core/failure/failure.dart';
import 'package:walkwise/features/product/data/repository/product_remote_repository.dart';
import 'package:walkwise/features/product/domain/entity/product_entity.dart';

final productRepositoryProvider = Provider<IProductRepository>(
  (ref) {
    // return ref.read(productLocalRepositoryProvider);
    return ref.read(productRemoteRepositoryProvider);
  },
);

abstract class IProductRepository {              //yesbhitra ko properties or functions independent huncha ani aru class ley yo abstract class lai implement or extend garera properties or function use garna milcha
  Future<Either<Failure, List<ProductEntity>>> getAllProducts(int page);
}
