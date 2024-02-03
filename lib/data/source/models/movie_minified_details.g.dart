// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_minified_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieMinifiedDetailsImpl _$$MovieMinifiedDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieMinifiedDetailsImpl(
      adult: json['adult'] as bool?,
      backdropPath: json['backdropPath'] as String?,
      genreIds:
          (json['genreIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int?,
      originalLanguage: json['originalLanguage'] as String?,
      originalTitle: json['originalTitle'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['posterPath'] as String?,
      releaseDate: json['releaseDate'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: json['voteCount'] as int?,
    );

Map<String, dynamic> _$$MovieMinifiedDetailsImplToJson(
        _$MovieMinifiedDetailsImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'genreIds': instance.genreIds,
      'id': instance.id,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
