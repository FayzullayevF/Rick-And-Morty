// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OriginInResultModel _$OriginInResultModelFromJson(Map<String, dynamic> json) {
  return _OriginInResultModel.fromJson(json);
}

/// @nodoc
mixin _$OriginInResultModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this OriginInResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OriginInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OriginInResultModelCopyWith<OriginInResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginInResultModelCopyWith<$Res> {
  factory $OriginInResultModelCopyWith(
          OriginInResultModel value, $Res Function(OriginInResultModel) then) =
      _$OriginInResultModelCopyWithImpl<$Res, OriginInResultModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$OriginInResultModelCopyWithImpl<$Res, $Val extends OriginInResultModel>
    implements $OriginInResultModelCopyWith<$Res> {
  _$OriginInResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OriginInResultModel
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
abstract class _$$OriginInResultModelImplCopyWith<$Res>
    implements $OriginInResultModelCopyWith<$Res> {
  factory _$$OriginInResultModelImplCopyWith(_$OriginInResultModelImpl value,
          $Res Function(_$OriginInResultModelImpl) then) =
      __$$OriginInResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$OriginInResultModelImplCopyWithImpl<$Res>
    extends _$OriginInResultModelCopyWithImpl<$Res, _$OriginInResultModelImpl>
    implements _$$OriginInResultModelImplCopyWith<$Res> {
  __$$OriginInResultModelImplCopyWithImpl(_$OriginInResultModelImpl _value,
      $Res Function(_$OriginInResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OriginInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$OriginInResultModelImpl(
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
class _$OriginInResultModelImpl implements _OriginInResultModel {
  const _$OriginInResultModelImpl({required this.name, required this.url});

  factory _$OriginInResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OriginInResultModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'OriginInResultModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginInResultModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of OriginInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginInResultModelImplCopyWith<_$OriginInResultModelImpl> get copyWith =>
      __$$OriginInResultModelImplCopyWithImpl<_$OriginInResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginInResultModelImplToJson(
      this,
    );
  }
}

abstract class _OriginInResultModel implements OriginInResultModel {
  const factory _OriginInResultModel(
      {required final String name,
      required final String url}) = _$OriginInResultModelImpl;

  factory _OriginInResultModel.fromJson(Map<String, dynamic> json) =
      _$OriginInResultModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of OriginInResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OriginInResultModelImplCopyWith<_$OriginInResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
