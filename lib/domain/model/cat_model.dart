import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'breeds.dart';
import 'categories.dart';

part 'cat_model.freezed.dart';

part 'cat_model.g.dart';

@freezed
class CatModel with _$CatModel {
  const factory CatModel({
    List<Breeds>? breeds,
    List<Categories>? categories,
    String? id,
    String? url,
    int? width,
    int? height,
  }) = _CatModel;

  factory CatModel.fromJson(Map<String, Object?> json) =>
      _$CatModelFromJson(json);
}
