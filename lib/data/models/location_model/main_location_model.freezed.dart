// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainLocationModel _$MainLocationModelFromJson(Map<String, dynamic> json) {
  return _MainLocationModel.fromJson(json);
}

/// @nodoc
mixin _$MainLocationModel {
  InfoModel get model => throw _privateConstructorUsedError;
  LocationResultModel get location => throw _privateConstructorUsedError;

  /// Serializes this MainLocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainLocationModelCopyWith<MainLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainLocationModelCopyWith<$Res> {
  factory $MainLocationModelCopyWith(
          MainLocationModel value, $Res Function(MainLocationModel) then) =
      _$MainLocationModelCopyWithImpl<$Res, MainLocationModel>;
  @useResult
  $Res call({InfoModel model, LocationResultModel location});

  $InfoModelCopyWith<$Res> get model;
  $LocationResultModelCopyWith<$Res> get location;
}

/// @nodoc
class _$MainLocationModelCopyWithImpl<$Res, $Val extends MainLocationModel>
    implements $MainLocationModelCopyWith<$Res> {
  _$MainLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InfoModel,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResultModel,
    ) as $Val);
  }

  /// Create a copy of MainLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoModelCopyWith<$Res> get model {
    return $InfoModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }

  /// Create a copy of MainLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationResultModelCopyWith<$Res> get location {
    return $LocationResultModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainLocationModelImplCopyWith<$Res>
    implements $MainLocationModelCopyWith<$Res> {
  factory _$$MainLocationModelImplCopyWith(_$MainLocationModelImpl value,
          $Res Function(_$MainLocationModelImpl) then) =
      __$$MainLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InfoModel model, LocationResultModel location});

  @override
  $InfoModelCopyWith<$Res> get model;
  @override
  $LocationResultModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$MainLocationModelImplCopyWithImpl<$Res>
    extends _$MainLocationModelCopyWithImpl<$Res, _$MainLocationModelImpl>
    implements _$$MainLocationModelImplCopyWith<$Res> {
  __$$MainLocationModelImplCopyWithImpl(_$MainLocationModelImpl _value,
      $Res Function(_$MainLocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? location = null,
  }) {
    return _then(_$MainLocationModelImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InfoModel,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResultModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainLocationModelImpl implements _MainLocationModel {
  const _$MainLocationModelImpl({required this.model, required this.location});

  factory _$MainLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainLocationModelImplFromJson(json);

  @override
  final InfoModel model;
  @override
  final LocationResultModel location;

  @override
  String toString() {
    return 'MainLocationModel(model: $model, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainLocationModelImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, location);

  /// Create a copy of MainLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainLocationModelImplCopyWith<_$MainLocationModelImpl> get copyWith =>
      __$$MainLocationModelImplCopyWithImpl<_$MainLocationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainLocationModelImplToJson(
      this,
    );
  }
}

abstract class _MainLocationModel implements MainLocationModel {
  const factory _MainLocationModel(
      {required final InfoModel model,
      required final LocationResultModel location}) = _$MainLocationModelImpl;

  factory _MainLocationModel.fromJson(Map<String, dynamic> json) =
      _$MainLocationModelImpl.fromJson;

  @override
  InfoModel get model;
  @override
  LocationResultModel get location;

  /// Create a copy of MainLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainLocationModelImplCopyWith<_$MainLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
