// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpisodesModel _$EpisodesModelFromJson(Map<String, dynamic> json) {
  return _EpisodesModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodesModel {
  List<EpisodesResultModel> get results => throw _privateConstructorUsedError;
  InfoModel get model => throw _privateConstructorUsedError;

  /// Serializes this EpisodesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodesModelCopyWith<EpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesModelCopyWith<$Res> {
  factory $EpisodesModelCopyWith(
          EpisodesModel value, $Res Function(EpisodesModel) then) =
      _$EpisodesModelCopyWithImpl<$Res, EpisodesModel>;
  @useResult
  $Res call({List<EpisodesResultModel> results, InfoModel model});

  $InfoModelCopyWith<$Res> get model;
}

/// @nodoc
class _$EpisodesModelCopyWithImpl<$Res, $Val extends EpisodesModel>
    implements $EpisodesModelCopyWith<$Res> {
  _$EpisodesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<EpisodesResultModel>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InfoModel,
    ) as $Val);
  }

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoModelCopyWith<$Res> get model {
    return $InfoModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodesModelImplCopyWith<$Res>
    implements $EpisodesModelCopyWith<$Res> {
  factory _$$EpisodesModelImplCopyWith(
          _$EpisodesModelImpl value, $Res Function(_$EpisodesModelImpl) then) =
      __$$EpisodesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EpisodesResultModel> results, InfoModel model});

  @override
  $InfoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$EpisodesModelImplCopyWithImpl<$Res>
    extends _$EpisodesModelCopyWithImpl<$Res, _$EpisodesModelImpl>
    implements _$$EpisodesModelImplCopyWith<$Res> {
  __$$EpisodesModelImplCopyWithImpl(
      _$EpisodesModelImpl _value, $Res Function(_$EpisodesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? model = null,
  }) {
    return _then(_$EpisodesModelImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<EpisodesResultModel>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodesModelImpl implements _EpisodesModel {
  const _$EpisodesModelImpl(
      {required final List<EpisodesResultModel> results, required this.model})
      : _results = results;

  factory _$EpisodesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesModelImplFromJson(json);

  final List<EpisodesResultModel> _results;
  @override
  List<EpisodesResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final InfoModel model;

  @override
  String toString() {
    return 'EpisodesModel(results: $results, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), model);

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesModelImplCopyWith<_$EpisodesModelImpl> get copyWith =>
      __$$EpisodesModelImplCopyWithImpl<_$EpisodesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesModelImplToJson(
      this,
    );
  }
}

abstract class _EpisodesModel implements EpisodesModel {
  const factory _EpisodesModel(
      {required final List<EpisodesResultModel> results,
      required final InfoModel model}) = _$EpisodesModelImpl;

  factory _EpisodesModel.fromJson(Map<String, dynamic> json) =
      _$EpisodesModelImpl.fromJson;

  @override
  List<EpisodesResultModel> get results;
  @override
  InfoModel get model;

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodesModelImplCopyWith<_$EpisodesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
