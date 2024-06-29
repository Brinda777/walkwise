import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/app/constants/api_endpoint.dart';
import 'package:walkwise/core/failure/failure.dart';
import 'package:walkwise/core/networking/remote/http_service.dart';
import 'package:walkwise/features/product/data/model/product_api_model.dart';
import 'package:walkwise/features/product/domain/entity/product_entity.dart';

final productRemoteDatasourceProvider = Provider(
  (ref) => ProductRemoteDatasource(
    dio: ref.read(httpServiceProvider),
    productApiModel: ref.read(productApiModelProvider),
  ),
);

class ProductRemoteDatasource {
  final Dio dio;
  final ProductApiModel productApiModel;

  ProductRemoteDatasource({
    required this.dio,
    required this.productApiModel,
  });

  Future<Either<Failure, List<ProductEntity>>> getAllProducts(int page) async {
    try {
      var response = await dio.get(ApiEndpoints.getProducts, queryParameters: {
          'page': page,
          'limit': ApiEndpoints.limitPage,
        },
      );
      if (response.statusCode == 201) {
        return Right((response.data['products'] as List)
            .map((product) => ProductApiModel.fromJson(product).toEntity())
            .toList());
        // //OR
        // //2nd way
        // GetAllProductDTO productAddDTO = GetAllProductDTO.fromJson(response.data);
        // return Right(ProductApiModel.toEntityList(productAddDTO.data));
      } else {
        return Left(
          Failure(
            error: response.statusMessage.toString(),
            statusCode: response.statusCode.toString(),
          ),
        );
      }
    } on DioException catch (e) {
      return Left(
        Failure(
          error: e.error.toString(),
        ),
      );
    }
  }
}
