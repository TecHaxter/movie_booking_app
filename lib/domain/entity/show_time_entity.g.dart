// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_time_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowTimeEntityImpl _$$ShowTimeEntityImplFromJson(Map json) =>
    _$ShowTimeEntityImpl(
      id: json['id'] as int?,
      movie: json['movie'] == null
          ? null
          : MovieEntity.fromJson(
              Map<String, Object?>.from(json['movie'] as Map)),
      seats: (json['seats'] as List<dynamic>?)
          ?.map((e) => SeatEntity.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
    );

Map<String, dynamic> _$$ShowTimeEntityImplToJson(
        _$ShowTimeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movie': instance.movie?.toJson(),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
    };
