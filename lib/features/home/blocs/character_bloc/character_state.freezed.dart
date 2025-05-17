// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterState {
  CharacterStatus get status => throw _privateConstructorUsedError;
  MainModel? get model => throw _privateConstructorUsedError;
  ResultsModel? get results => throw _privateConstructorUsedError;

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
  @useResult
  $Res call({CharacterStatus status, MainModel? model, ResultsModel? results});

  $MainModelCopyWith<$Res>? get model;
  $ResultsModelCopyWith<$Res>? get results;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? model = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MainModel?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as ResultsModel?,
    ) as $Val);
  }

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $MainModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultsModelCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $ResultsModelCopyWith<$Res>(_value.results!, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterStateImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$CharacterStateImplCopyWith(_$CharacterStateImpl value,
          $Res Function(_$CharacterStateImpl) then) =
      __$$CharacterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterStatus status, MainModel? model, ResultsModel? results});

  @override
  $MainModelCopyWith<$Res>? get model;
  @override
  $ResultsModelCopyWith<$Res>? get results;
}

/// @nodoc
class __$$CharacterStateImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateImpl>
    implements _$$CharacterStateImplCopyWith<$Res> {
  __$$CharacterStateImplCopyWithImpl(
      _$CharacterStateImpl _value, $Res Function(_$CharacterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? model = freezed,
    Object? results = freezed,
  }) {
    return _then(_$CharacterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MainModel?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as ResultsModel?,
    ));
  }
}

/// @nodoc

class _$CharacterStateImpl implements _CharacterState {
  const _$CharacterStateImpl(
      {required this.status, required this.model, required this.results});

  @override
  final CharacterStatus status;
  @override
  final MainModel? model;
  @override
  final ResultsModel? results;

  @override
  String toString() {
    return 'CharacterState(status: $status, model: $model, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.results, results) || other.results == results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, model, results);

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      __$$CharacterStateImplCopyWithImpl<_$CharacterStateImpl>(
          this, _$identity);
}

abstract class _CharacterState implements CharacterState {
  const factory _CharacterState(
      {required final CharacterStatus status,
      required final MainModel? model,
      required final ResultsModel? results}) = _$CharacterStateImpl;

  @override
  CharacterStatus get status;
  @override
  MainModel? get model;
  @override
  ResultsModel? get results;

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
