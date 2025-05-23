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

EpisodesResultModel _$EpisodesResultModelFromJson(Map<String, dynamic> json) {
  return _EpisodesResultModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodesResultModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "air_date")
  String get airDate => throw _privateConstructorUsedError;
  String get episode => throw _privateConstructorUsedError;
  List<String> get characters => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  /// Serializes this EpisodesResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpisodesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodesResultModelCopyWith<EpisodesResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesResultModelCopyWith<$Res> {
  factory $EpisodesResultModelCopyWith(
          EpisodesResultModel value, $Res Function(EpisodesResultModel) then) =
      _$EpisodesResultModelCopyWithImpl<$Res, EpisodesResultModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "air_date") String airDate,
      String episode,
      List<String> characters,
      String url,
      String created});
}

/// @nodoc
class _$EpisodesResultModelCopyWithImpl<$Res, $Val extends EpisodesResultModel>
    implements $EpisodesResultModelCopyWith<$Res> {
  _$EpisodesResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = null,
    Object? episode = null,
    Object? characters = null,
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
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EpisodesResultModelImplCopyWith<$Res>
    implements $EpisodesResultModelCopyWith<$Res> {
  factory _$$EpisodesResultModelImplCopyWith(_$EpisodesResultModelImpl value,
          $Res Function(_$EpisodesResultModelImpl) then) =
      __$$EpisodesResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "air_date") String airDate,
      String episode,
      List<String> characters,
      String url,
      String created});
}

/// @nodoc
class __$$EpisodesResultModelImplCopyWithImpl<$Res>
    extends _$EpisodesResultModelCopyWithImpl<$Res, _$EpisodesResultModelImpl>
    implements _$$EpisodesResultModelImplCopyWith<$Res> {
  __$$EpisodesResultModelImplCopyWithImpl(_$EpisodesResultModelImpl _value,
      $Res Function(_$EpisodesResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = null,
    Object? episode = null,
    Object? characters = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(_$EpisodesResultModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
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
class _$EpisodesResultModelImpl implements _EpisodesResultModel {
  const _$EpisodesResultModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "air_date") required this.airDate,
      required this.episode,
      required final List<String> characters,
      required this.url,
      required this.created})
      : _characters = characters;

  factory _$EpisodesResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesResultModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "air_date")
  final String airDate;
  @override
  final String episode;
  final List<String> _characters;
  @override
  List<String> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final String url;
  @override
  final String created;

  @override
  String toString() {
    return 'EpisodesResultModel(id: $id, name: $name, airDate: $airDate, episode: $episode, characters: $characters, url: $url, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, airDate, episode,
      const DeepCollectionEquality().hash(_characters), url, created);

  /// Create a copy of EpisodesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesResultModelImplCopyWith<_$EpisodesResultModelImpl> get copyWith =>
      __$$EpisodesResultModelImplCopyWithImpl<_$EpisodesResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesResultModelImplToJson(
      this,
    );
  }
}

abstract class _EpisodesResultModel implements EpisodesResultModel {
  const factory _EpisodesResultModel(
      {required final int id,
      required final String name,
      @JsonKey(name: "air_date") required final String airDate,
      required final String episode,
      required final List<String> characters,
      required final String url,
      required final String created}) = _$EpisodesResultModelImpl;

  factory _EpisodesResultModel.fromJson(Map<String, dynamic> json) =
      _$EpisodesResultModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "air_date")
  String get airDate;
  @override
  String get episode;
  @override
  List<String> get characters;
  @override
  String get url;
  @override
  String get created;

  /// Create a copy of EpisodesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodesResultModelImplCopyWith<_$EpisodesResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
