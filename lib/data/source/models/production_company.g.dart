// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCompanyImpl _$$ProductionCompanyImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCompanyImpl(
      id: json['id'] as int?,
      logoPath: json['logoPath'] as String?,
      name: json['name'] as String?,
      originCountry: json['originCountry'] as String?,
    );

Map<String, dynamic> _$$ProductionCompanyImplToJson(
        _$ProductionCompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logoPath': instance.logoPath,
      'name': instance.name,
      'originCountry': instance.originCountry,
    };
