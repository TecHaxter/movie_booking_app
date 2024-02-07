// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movies_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcomingMoviesDataImpl _$$UpcomingMoviesDataImplFromJson(Map json) =>
    _$UpcomingMoviesDataImpl(
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(Map<String, Object?>.from(json['dates'] as Map)),
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) =>
              MovieDetailsData.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$$UpcomingMoviesDataImplToJson(
        _$UpcomingMoviesDataImpl instance) =>
    <String, dynamic>{
      'dates': instance.dates?.toJson(),
      'page': instance.page,
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$DatesImpl _$$DatesImplFromJson(Map json) => _$DatesImpl(
      maximum: json['maximum'] == null
          ? null
          : DateTime.parse(json['maximum'] as String),
      minimum: json['minimum'] == null
          ? null
          : DateTime.parse(json['minimum'] as String),
    );

Map<String, dynamic> _$$DatesImplToJson(_$DatesImpl instance) =>
    <String, dynamic>{
      'maximum': instance.maximum?.toIso8601String(),
      'minimum': instance.minimum?.toIso8601String(),
    };
