// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationResultModel _$LocationResultModelFromJson(Map<String, dynamic> json) {
  return _LocationResultModel.fromJson(json);
}

/// @nodoc
mixin _$LocationResultModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get dimension => throw _privateConstructorUsedError;
  List<String> get residents => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  /// Serializes this LocationResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationResultModelCopyWith<LocationResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResultModelCopyWith<$Res> {
  factory $LocationResultModelCopyWith(
          LocationResultModel value, $Res Function(LocationResultModel) then) =
      _$LocationResultModelCopyWithImpl<$Res, LocationResultModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      String dimension,
      List<String> residents,
      String url,
      String created});
}

/// @nodoc
class _$LocationResultModelCopyWithImpl<$Res, $Val extends LocationResultModel>
    implements $LocationResultModelCopyWith<$Res> {
  _$LocationResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? dimension = null,
    Object? residents = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String,
      residents: null == residents
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationResultModelImplCopyWith<$Res>
    implements $LocationResultModelCopyWith<$Res> {
  factory _$$LocationResultModelImplCopyWith(_$LocationResultModelImpl value,
          $Res Function(_$LocationResultModelImpl) then) =
      __$$LocationResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      String dimension,
      List<String> residents,
      String url,
      String created});
}

/// @nodoc
class __$$LocationResultModelImplCopyWithImpl<$Res>
    extends _$LocationResultModelCopyWithImpl<$Res, _$LocationResultModelImpl>
    implements _$$LocationResultModelImplCopyWith<$Res> {
  __$$LocationResultModelImplCopyWithImpl(_$LocationResultModelImpl _value,
      $Res Function(_$LocationResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? dimension = null,
    Object? residents = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(_$LocationResultModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String,
      residents: null == residents
          ? _value._residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationResultModelImpl implements _LocationResultModel {
  const _$LocationResultModelImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.dimension,
      required final List<String> residents,
      required this.url,
      required this.created})
      : _residents = residents;

  factory _$LocationResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationResultModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String dimension;
  final List<String> _residents;
  @override
  List<String> get residents {
    if (_residents is EqualUnmodifiableListView) return _residents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_residents);
  }

  @override
  final String url;
  @override
  final String created;

  @override
  String toString() {
    return 'LocationResultModel(id: $id, name: $name, type: $type, dimension: $dimension, residents: $residents, url: $url, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            const DeepCollectionEquality()
                .equals(other._residents, _residents) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, dimension,
      const DeepCollectionEquality().hash(_residents), url, created);

  /// Create a copy of LocationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationResultModelImplCopyWith<_$LocationResultModelImpl> get copyWith =>
      __$$LocationResultModelImplCopyWithImpl<_$LocationResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationResultModelImplToJson(
      this,
    );
  }
}

abstract class _LocationResultModel implements LocationResultModel {
  const factory _LocationResultModel(
      {required final int id,
      required final String name,
      required final String type,
      required final String dimension,
      required final List<String> residents,
      required final String url,
      required final String created}) = _$LocationResultModelImpl;

  factory _LocationResultModel.fromJson(Map<String, dynamic> json) =
      _$LocationResultModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get dimension;
  @override
  List<String> get residents;
  @override
  String get url;
  @override
  String get created;

  /// Create a copy of LocationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationResultModelImplCopyWith<_$LocationResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
