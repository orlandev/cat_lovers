// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatModel _$$_CatModelFromJson(Map<String, dynamic> json) => _$_CatModel(
      breeds: (json['breeds'] as List<dynamic>?)
          ?.map((e) => Breeds.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$$_CatModelToJson(_$_CatModel instance) =>
    <String, dynamic>{
      'breeds': instance.breeds,
      'categories': instance.categories,
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
