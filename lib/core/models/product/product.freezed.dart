// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductContent _$ProductContentFromJson(Map<String, dynamic> json) {
  return _ProductContent.fromJson(json);
}

/// @nodoc
mixin _$ProductContent {
  ProductContentType get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductContentCopyWith<ProductContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductContentCopyWith<$Res> {
  factory $ProductContentCopyWith(
          ProductContent value, $Res Function(ProductContent) then) =
      _$ProductContentCopyWithImpl<$Res>;
  $Res call({ProductContentType type, String content});
}

/// @nodoc
class _$ProductContentCopyWithImpl<$Res>
    implements $ProductContentCopyWith<$Res> {
  _$ProductContentCopyWithImpl(this._value, this._then);

  final ProductContent _value;
  // ignore: unused_field
  final $Res Function(ProductContent) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductContentType,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductContentCopyWith<$Res>
    implements $ProductContentCopyWith<$Res> {
  factory _$$_ProductContentCopyWith(
          _$_ProductContent value, $Res Function(_$_ProductContent) then) =
      __$$_ProductContentCopyWithImpl<$Res>;
  @override
  $Res call({ProductContentType type, String content});
}

/// @nodoc
class __$$_ProductContentCopyWithImpl<$Res>
    extends _$ProductContentCopyWithImpl<$Res>
    implements _$$_ProductContentCopyWith<$Res> {
  __$$_ProductContentCopyWithImpl(
      _$_ProductContent _value, $Res Function(_$_ProductContent) _then)
      : super(_value, (v) => _then(v as _$_ProductContent));

  @override
  _$_ProductContent get _value => super._value as _$_ProductContent;

  @override
  $Res call({
    Object? type = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_ProductContent(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductContentType,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductContent implements _ProductContent {
  _$_ProductContent({required this.type, required this.content});

  factory _$_ProductContent.fromJson(Map<String, dynamic> json) =>
      _$$_ProductContentFromJson(json);

  @override
  final ProductContentType type;
  @override
  final String content;

  @override
  String toString() {
    return 'ProductContent(type: $type, content: $content)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_ProductContentCopyWith<_$_ProductContent> get copyWith =>
      __$$_ProductContentCopyWithImpl<_$_ProductContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductContentToJson(
      this,
    );
  }
}

abstract class _ProductContent implements ProductContent {
  factory _ProductContent(
      {required final ProductContentType type,
      required final String content}) = _$_ProductContent;

  factory _ProductContent.fromJson(Map<String, dynamic> json) =
      _$_ProductContent.fromJson;

  @override
  ProductContentType get type;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ProductContentCopyWith<_$_ProductContent> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get githubUrls => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get platforms => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  List<String> get technologies => throw _privateConstructorUsedError;
  List<ProductContent> get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String subtitle,
      String image,
      List<String> githubUrls,
      String description,
      List<String> platforms,
      List<String> categories,
      List<String> technologies,
      List<ProductContent> content});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? image = freezed,
    Object? githubUrls = freezed,
    Object? description = freezed,
    Object? platforms = freezed,
    Object? categories = freezed,
    Object? technologies = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrls: githubUrls == freezed
          ? _value.githubUrls
          : githubUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      technologies: technologies == freezed
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ProductContent>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String subtitle,
      String image,
      List<String> githubUrls,
      String description,
      List<String> platforms,
      List<String> categories,
      List<String> technologies,
      List<ProductContent> content});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? image = freezed,
    Object? githubUrls = freezed,
    Object? description = freezed,
    Object? platforms = freezed,
    Object? categories = freezed,
    Object? technologies = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_Product(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrls: githubUrls == freezed
          ? _value.githubUrls
          : githubUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      technologies: technologies == freezed
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ProductContent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  _$_Product(
      {required this.title,
      required this.subtitle,
      required this.image,
      required this.githubUrls,
      required this.description,
      required this.platforms,
      required this.categories,
      required this.technologies,
      required this.content});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String image;
  @override
  final List<String> githubUrls;
  @override
  final String description;
  @override
  final List<String> platforms;
  @override
  final List<String> categories;
  @override
  final List<String> technologies;
  @override
  final List<ProductContent> content;

  @override
  String toString() {
    return 'Product(title: $title, subtitle: $subtitle, image: $image, githubUrls: $githubUrls, description: $description, platforms: $platforms, categories: $categories, technologies: $technologies, content: $content)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {required final String title,
      required final String subtitle,
      required final String image,
      required final List<String> githubUrls,
      required final String description,
      required final List<String> platforms,
      required final List<String> categories,
      required final List<String> technologies,
      required final List<ProductContent> content}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get image;
  @override
  List<String> get githubUrls;
  @override
  String get description;
  @override
  List<String> get platforms;
  @override
  List<String> get categories;
  @override
  List<String> get technologies;
  @override
  List<ProductContent> get content;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
