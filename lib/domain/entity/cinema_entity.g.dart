// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CinemaEntityImpl _$$CinemaEntityImplFromJson(Map json) => _$CinemaEntityImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      movies: (json['movies'] as List<dynamic>?)
          ?.map(
              (e) => MovieEntity.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      showtimes: (json['showtimes'] as List<dynamic>?)
          ?.map((e) =>
              ShowTimeEntity.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$CinemaEntityImplToJson(_$CinemaEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'movies': instance.movies?.map((e) => e.toJson()).toList(),
      'showtimes': instance.showtimes?.map((e) => e.toJson()).toList(),
    };
