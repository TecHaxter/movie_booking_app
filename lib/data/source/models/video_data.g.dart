// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoDataImpl _$$VideoDataImplFromJson(Map json) => _$VideoDataImpl(
      id: json['id'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) =>
              VideoDataItem.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$VideoDataImplToJson(_$VideoDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

_$VideoDataItemImpl _$$VideoDataItemImplFromJson(Map json) =>
    _$VideoDataItemImpl(
      iso6391: json['iso_639_1'] as String?,
      iso31661: json['iso_3166_1'] as String?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      site: json['site'] as String?,
      size: json['size'] as int?,
      type: json['type'] as String?,
      official: json['official'] as bool?,
      publishedAt: json['published_at'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$VideoDataItemImplToJson(_$VideoDataItemImpl instance) =>
    <String, dynamic>{
      'iso_639_1': instance.iso6391,
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt,
      'id': instance.id,
    };
