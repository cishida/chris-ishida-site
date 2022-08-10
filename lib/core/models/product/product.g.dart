// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      githubUrl: json['githubUrl'] as String,
      description: json['description'] as String,
      platforms:
          (json['platforms'] as List<dynamic>).map((e) => e as String).toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      technologies: (json['technologies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'githubUrl': instance.githubUrl,
      'description': instance.description,
      'platforms': instance.platforms,
      'categories': instance.categories,
      'technologies': instance.technologies,
    };
