import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@unfreezed
class Product with _$Product {
  factory Product({
    required final String title,
    required final String subtitle,
    required final String image,
    required final String githubUrl,
    required final String description,
    required final List<String> platforms,
    required final List<String> categories,
    required final List<String> technologies,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
