import 'package:walkwise/features/product/domain/entity/product_entity.dart';

class ProductState {
  final List<ProductEntity> lstProducts;
  final bool isLoading;
  final String? error;
  final bool hasReachedMax;
  final int page;

  ProductState({required this.lstProducts, required this.isLoading, this.error, required this.hasReachedMax, required this.page});

  factory ProductState.initial() {
    return ProductState(lstProducts: [], isLoading: false, hasReachedMax: false,
      page: 0,
    );
  }

  ProductState copyWith({
    final List<ProductEntity>? lstProducts,
    final bool? isLoading,
    final String? error,
    final bool? hasReachedMax,
    final int? page,
  }) {
    return ProductState(
        lstProducts: lstProducts ?? this.lstProducts,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error, 
        hasReachedMax: hasReachedMax?? this.hasReachedMax,
        page: page?? this.page
        );
  }
}
