// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) {
  return _MovieEntity.fromJson(json);
}

/// @nodoc
mixin _$MovieEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get poster => throw _privateConstructorUsedError;
  List<String>? get thumbnails => throw _privateConstructorUsedError;
  bool? get isAdult => throw _privateConstructorUsedError;
  List<GenreEntity>? get genres => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  int? get starRating => throw _privateConstructorUsedError;
  String? get trailerYoutubeId => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) then) =
      _$MovieEntityCopyWithImpl<$Res, MovieEntity>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? poster,
      List<String>? thumbnails,
      bool? isAdult,
      List<GenreEntity>? genres,
      DateTime? releaseDate,
      int? starRating,
      String? trailerYoutubeId,
      String? overview});
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res, $Val extends MovieEntity>
    implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? poster = freezed,
    Object? thumbnails = freezed,
    Object? isAdult = freezed,
    Object? genres = freezed,
    Object? releaseDate = freezed,
    Object? starRating = freezed,
    Object? trailerYoutubeId = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: freezed == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAdult: freezed == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starRating: freezed == starRating
          ? _value.starRating
          : starRating // ignore: cast_nullable_to_non_nullable
              as int?,
      trailerYoutubeId: freezed == trailerYoutubeId
          ? _value.trailerYoutubeId
          : trailerYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieEntityImplCopyWith<$Res>
    implements $MovieEntityCopyWith<$Res> {
  factory _$$MovieEntityImplCopyWith(
          _$MovieEntityImpl value, $Res Function(_$MovieEntityImpl) then) =
      __$$MovieEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? poster,
      List<String>? thumbnails,
      bool? isAdult,
      List<GenreEntity>? genres,
      DateTime? releaseDate,
      int? starRating,
      String? trailerYoutubeId,
      String? overview});
}

/// @nodoc
class __$$MovieEntityImplCopyWithImpl<$Res>
    extends _$MovieEntityCopyWithImpl<$Res, _$MovieEntityImpl>
    implements _$$MovieEntityImplCopyWith<$Res> {
  __$$MovieEntityImplCopyWithImpl(
      _$MovieEntityImpl _value, $Res Function(_$MovieEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? poster = freezed,
    Object? thumbnails = freezed,
    Object? isAdult = freezed,
    Object? genres = freezed,
    Object? releaseDate = freezed,
    Object? starRating = freezed,
    Object? trailerYoutubeId = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$MovieEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: freezed == thumbnails
          ? _value._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAdult: freezed == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starRating: freezed == starRating
          ? _value.starRating
          : starRating // ignore: cast_nullable_to_non_nullable
              as int?,
      trailerYoutubeId: freezed == trailerYoutubeId
          ? _value.trailerYoutubeId
          : trailerYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieEntityImpl implements _MovieEntity {
  const _$MovieEntityImpl(
      {this.id,
      this.title,
      this.poster,
      final List<String>? thumbnails,
      this.isAdult,
      final List<GenreEntity>? genres,
      this.releaseDate,
      this.starRating,
      this.trailerYoutubeId,
      this.overview})
      : _thumbnails = thumbnails,
        _genres = genres;

  factory _$MovieEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? poster;
  final List<String>? _thumbnails;
  @override
  List<String>? get thumbnails {
    final value = _thumbnails;
    if (value == null) return null;
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isAdult;
  final List<GenreEntity>? _genres;
  @override
  List<GenreEntity>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? releaseDate;
  @override
  final int? starRating;
  @override
  final String? trailerYoutubeId;
  @override
  final String? overview;

  @override
  String toString() {
    return 'MovieEntity(id: $id, title: $title, poster: $poster, thumbnails: $thumbnails, isAdult: $isAdult, genres: $genres, releaseDate: $releaseDate, starRating: $starRating, trailerYoutubeId: $trailerYoutubeId, overview: $overview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            (identical(other.isAdult, isAdult) || other.isAdult == isAdult) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.starRating, starRating) ||
                other.starRating == starRating) &&
            (identical(other.trailerYoutubeId, trailerYoutubeId) ||
                other.trailerYoutubeId == trailerYoutubeId) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      poster,
      const DeepCollectionEquality().hash(_thumbnails),
      isAdult,
      const DeepCollectionEquality().hash(_genres),
      releaseDate,
      starRating,
      trailerYoutubeId,
      overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieEntityImplCopyWith<_$MovieEntityImpl> get copyWith =>
      __$$MovieEntityImplCopyWithImpl<_$MovieEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieEntityImplToJson(
      this,
    );
  }
}

abstract class _MovieEntity implements MovieEntity {
  const factory _MovieEntity(
      {final int? id,
      final String? title,
      final String? poster,
      final List<String>? thumbnails,
      final bool? isAdult,
      final List<GenreEntity>? genres,
      final DateTime? releaseDate,
      final int? starRating,
      final String? trailerYoutubeId,
      final String? overview}) = _$MovieEntityImpl;

  factory _MovieEntity.fromJson(Map<String, dynamic> json) =
      _$MovieEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get poster;
  @override
  List<String>? get thumbnails;
  @override
  bool? get isAdult;
  @override
  List<GenreEntity>? get genres;
  @override
  DateTime? get releaseDate;
  @override
  int? get starRating;
  @override
  String? get trailerYoutubeId;
  @override
  String? get overview;
  @override
  @JsonKey(ignore: true)
  _$$MovieEntityImplCopyWith<_$MovieEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
