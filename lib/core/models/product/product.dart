import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

enum ProductContentType {
  header,
  header2,
  subheader,
  paragraph,
  image,
}

@unfreezed
class ProductContent with _$ProductContent {
  factory ProductContent({
    required final ProductContentType type,
    required final String content,
  }) = _ProductContent;

  factory ProductContent.fromJson(Map<String, dynamic> json) =>
      _$ProductContentFromJson(json);
}

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
    required final List<ProductContent> content,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
