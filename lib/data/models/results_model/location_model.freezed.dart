// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationInResultModel _$LocationInResultModelFromJson(
    Map<String, dynamic> json) {
  return _LocationInResultModel.fromJson(json);
}

/// @nodoc
mixin _$LocationInResultModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this LocationInResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationInResultModelCopyWith<LocationInResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInResultModelCopyWith<$Res> {
  factory $LocationInResultModelCopyWith(LocationInResultModel value,
          $Res Function(LocationInResultModel) then) =
      _$LocationInResultModelCopyWithImpl<$Res, LocationInResultModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$LocationInResultModelCopyWithImpl<$Res,
        $Val extends LocationInResultModel>
    implements $LocationInResultModelCopyWith<$Res> {
  _$LocationInResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationInResultModelImplCopyWith<$Res>
    implements $LocationInResultModelCopyWith<$Res> {
  factory _$$LocationInResultModelImplCopyWith(
          _$LocationInResultModelImpl value,
          $Res Function(_$LocationInResultModelImpl) then) =
      __$$LocationInResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$LocationInResultModelImplCopyWithImpl<$Res>
    extends _$LocationInResultModelCopyWithImpl<$Res,
        _$LocationInResultModelImpl>
    implements _$$LocationInResultModelImplCopyWith<$Res> {
  __$$LocationInResultModelImplCopyWithImpl(_$LocationInResultModelImpl _value,
      $Res Function(_$LocationInResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$LocationInResultModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationInResultModelImpl implements _LocationInResultModel {
  const _$LocationInResultModelImpl({required this.name, required this.url});

  factory _$LocationInResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationInResultModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'LocationInResultModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationInResultModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of LocationInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationInResultModelImplCopyWith<_$LocationInResultModelImpl>
      get copyWith => __$$LocationInResultModelImplCopyWithImpl<
          _$LocationInResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationInResultModelImplToJson(
      this,
    );
  }
}

abstract class _LocationInResultModel implements LocationInResultModel {
  const factory _LocationInResultModel(
      {required final String name,
      required final String url}) = _$LocationInResultModelImpl;

  factory _LocationInResultModel.fromJson(Map<String, dynamic> json) =
      _$LocationInResultModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of LocationInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationInResultModelImplCopyWith<_$LocationInResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
