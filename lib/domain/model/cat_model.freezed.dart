// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatModel _$CatModelFromJson(Map<String, dynamic> json) {
  return _CatModel.fromJson(json);
}

/// @nodoc
mixin _$CatModel {
  List<Breeds>? get breeds => throw _privateConstructorUsedError;
  List<Categories>? get categories => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatModelCopyWith<CatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatModelCopyWith<$Res> {
  factory $CatModelCopyWith(CatModel value, $Res Function(CatModel) then) =
      _$CatModelCopyWithImpl<$Res, CatModel>;
  @useResult
  $Res call(
      {List<Breeds>? breeds,
      List<Categories>? categories,
      String? id,
      String? url,
      int? width,
      int? height});
}

/// @nodoc
class _$CatModelCopyWithImpl<$Res, $Val extends CatModel>
    implements $CatModelCopyWith<$Res> {
  _$CatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = freezed,
    Object? categories = freezed,
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      breeds: freezed == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breeds>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatModelCopyWith<$Res> implements $CatModelCopyWith<$Res> {
  factory _$$_CatModelCopyWith(
          _$_CatModel value, $Res Function(_$_CatModel) then) =
      __$$_CatModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Breeds>? breeds,
      List<Categories>? categories,
      String? id,
      String? url,
      int? width,
      int? height});
}

/// @nodoc
class __$$_CatModelCopyWithImpl<$Res>
    extends _$CatModelCopyWithImpl<$Res, _$_CatModel>
    implements _$$_CatModelCopyWith<$Res> {
  __$$_CatModelCopyWithImpl(
      _$_CatModel _value, $Res Function(_$_CatModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = freezed,
    Object? categories = freezed,
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_CatModel(
      breeds: freezed == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breeds>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatModel with DiagnosticableTreeMixin implements _CatModel {
  const _$_CatModel(
      {final List<Breeds>? breeds,
      final List<Categories>? categories,
      this.id,
      this.url,
      this.width,
      this.height})
      : _breeds = breeds,
        _categories = categories;

  factory _$_CatModel.fromJson(Map<String, dynamic> json) =>
      _$$_CatModelFromJson(json);

  final List<Breeds>? _breeds;
  @override
  List<Breeds>? get breeds {
    final value = _breeds;
    if (value == null) return null;
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Categories>? _categories;
  @override
  List<Categories>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? id;
  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CatModel(breeds: $breeds, categories: $categories, id: $id, url: $url, width: $width, height: $height)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CatModel'))
      ..add(DiagnosticsProperty('breeds', breeds))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatModel &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breeds),
      const DeepCollectionEquality().hash(_categories),
      id,
      url,
      width,
      height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatModelCopyWith<_$_CatModel> get copyWith =>
      __$$_CatModelCopyWithImpl<_$_CatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatModelToJson(
      this,
    );
  }
}

abstract class _CatModel implements CatModel {
  const factory _CatModel(
      {final List<Breeds>? breeds,
      final List<Categories>? categories,
      final String? id,
      final String? url,
      final int? width,
      final int? height}) = _$_CatModel;

  factory _CatModel.fromJson(Map<String, dynamic> json) = _$_CatModel.fromJson;

  @override
  List<Breeds>? get breeds;
  @override
  List<Categories>? get categories;
  @override
  String? get id;
  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$$_CatModelCopyWith<_$_CatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
