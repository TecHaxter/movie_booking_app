// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinema_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CinemaEntity _$CinemaEntityFromJson(Map<String, dynamic> json) {
  return _CinemaEntity.fromJson(json);
}

/// @nodoc
mixin _$CinemaEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<MovieEntity>? get movies => throw _privateConstructorUsedError;
  List<ShowTimeEntity>? get showtimes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CinemaEntityCopyWith<CinemaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemaEntityCopyWith<$Res> {
  factory $CinemaEntityCopyWith(
          CinemaEntity value, $Res Function(CinemaEntity) then) =
      _$CinemaEntityCopyWithImpl<$Res, CinemaEntity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? location,
      List<MovieEntity>? movies,
      List<ShowTimeEntity>? showtimes});
}

/// @nodoc
class _$CinemaEntityCopyWithImpl<$Res, $Val extends CinemaEntity>
    implements $CinemaEntityCopyWith<$Res> {
  _$CinemaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? movies = freezed,
    Object? showtimes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      movies: freezed == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      showtimes: freezed == showtimes
          ? _value.showtimes
          : showtimes // ignore: cast_nullable_to_non_nullable
              as List<ShowTimeEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CinemaEntityImplCopyWith<$Res>
    implements $CinemaEntityCopyWith<$Res> {
  factory _$$CinemaEntityImplCopyWith(
          _$CinemaEntityImpl value, $Res Function(_$CinemaEntityImpl) then) =
      __$$CinemaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? location,
      List<MovieEntity>? movies,
      List<ShowTimeEntity>? showtimes});
}

/// @nodoc
class __$$CinemaEntityImplCopyWithImpl<$Res>
    extends _$CinemaEntityCopyWithImpl<$Res, _$CinemaEntityImpl>
    implements _$$CinemaEntityImplCopyWith<$Res> {
  __$$CinemaEntityImplCopyWithImpl(
      _$CinemaEntityImpl _value, $Res Function(_$CinemaEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? movies = freezed,
    Object? showtimes = freezed,
  }) {
    return _then(_$CinemaEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      movies: freezed == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      showtimes: freezed == showtimes
          ? _value._showtimes
          : showtimes // ignore: cast_nullable_to_non_nullable
              as List<ShowTimeEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CinemaEntityImpl implements _CinemaEntity {
  const _$CinemaEntityImpl(
      {this.id,
      this.name,
      this.location,
      final List<MovieEntity>? movies,
      final List<ShowTimeEntity>? showtimes})
      : _movies = movies,
        _showtimes = showtimes;

  factory _$CinemaEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CinemaEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? location;
  final List<MovieEntity>? _movies;
  @override
  List<MovieEntity>? get movies {
    final value = _movies;
    if (value == null) return null;
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ShowTimeEntity>? _showtimes;
  @override
  List<ShowTimeEntity>? get showtimes {
    final value = _showtimes;
    if (value == null) return null;
    if (_showtimes is EqualUnmodifiableListView) return _showtimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CinemaEntity(id: $id, name: $name, location: $location, movies: $movies, showtimes: $showtimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CinemaEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality()
                .equals(other._showtimes, _showtimes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      location,
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(_showtimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CinemaEntityImplCopyWith<_$CinemaEntityImpl> get copyWith =>
      __$$CinemaEntityImplCopyWithImpl<_$CinemaEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CinemaEntityImplToJson(
      this,
    );
  }
}

abstract class _CinemaEntity implements CinemaEntity {
  const factory _CinemaEntity(
      {final int? id,
      final String? name,
      final String? location,
      final List<MovieEntity>? movies,
      final List<ShowTimeEntity>? showtimes}) = _$CinemaEntityImpl;

  factory _CinemaEntity.fromJson(Map<String, dynamic> json) =
      _$CinemaEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get location;
  @override
  List<MovieEntity>? get movies;
  @override
  List<ShowTimeEntity>? get showtimes;
  @override
  @JsonKey(ignore: true)
  _$$CinemaEntityImplCopyWith<_$CinemaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
