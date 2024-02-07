// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageDataImpl _$$ImageDataImplFromJson(Map json) => _$ImageDataImpl(
      backdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) =>
              ImageDataItem.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      id: json['id'] as int?,
      logos: (json['logos'] as List<dynamic>?)
          ?.map((e) =>
              ImageDataItem.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) =>
              ImageDataItem.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$ImageDataImplToJson(_$ImageDataImpl instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'logos': instance.logos?.map((e) => e.toJson()).toList(),
      'posters': instance.posters?.map((e) => e.toJson()).toList(),
    };

_$ImageDataItemImpl _$$ImageDataItemImplFromJson(Map json) =>
    _$ImageDataItemImpl(
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble(),
      height: json['height'] as int?,
      iso6391: json['iso_639_1'] as String?,
      filePath: json['file_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$ImageDataItemImplToJson(_$ImageDataItemImpl instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'height': instance.height,
      'iso_639_1': instance.iso6391,
      'file_path': instance.filePath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'width': instance.width,
    };
