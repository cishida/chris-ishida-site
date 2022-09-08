// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductContent _$$_ProductContentFromJson(Map<String, dynamic> json) =>
    _$_ProductContent(
      type: $enumDecode(_$ProductContentTypeEnumMap, json['type']),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_ProductContentToJson(_$_ProductContent instance) =>
    <String, dynamic>{
      'type': _$ProductContentTypeEnumMap[instance.type]!,
      'content': instance.content,
    };

const _$ProductContentTypeEnumMap = {
  ProductContentType.header: 'header',
  ProductContentType.header2: 'header2',
  ProductContentType.subheader: 'subheader',
  ProductContentType.paragraph: 'paragraph',
  ProductContentType.image: 'image',
};

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      githubUrls: (json['githubUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String,
      platforms:
          (json['platforms'] as List<dynamic>).map((e) => e as String).toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      technologies: (json['technologies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map((e) => ProductContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'githubUrls': instance.githubUrls,
      'description': instance.description,
      'platforms': instance.platforms,
      'categories': instance.categories,
      'technologies': instance.technologies,
      'content': instance.content,
    };
