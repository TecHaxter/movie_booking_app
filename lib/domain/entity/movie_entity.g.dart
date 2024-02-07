// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieEntityImpl _$$MovieEntityImplFromJson(Map json) => _$MovieEntityImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      poster: json['poster'] as String?,
      thumbnails: (json['thumbnails'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isAdult: json['is_adult'] as bool?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map(
              (e) => GenreEntity.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      starRating: json['star_rating'] as int?,
      trailerYoutubeId: json['trailer_youtube_id'] as String?,
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$$MovieEntityImplToJson(_$MovieEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster': instance.poster,
      'thumbnails': instance.thumbnails,
      'is_adult': instance.isAdult,
      'genres': instance.genres?.map((e) => e.toJson()).toList(),
      'release_date': instance.releaseDate?.toIso8601String(),
      'star_rating': instance.starRating,
      'trailer_youtube_id': instance.trailerYoutubeId,
      'overview': instance.overview,
    };
