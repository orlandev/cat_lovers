import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'categories.freezed.dart';

part 'categories.g.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({int? id, String? name}) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}
