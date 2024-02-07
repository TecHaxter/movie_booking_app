// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatEntityImpl _$$SeatEntityImplFromJson(Map json) => _$SeatEntityImpl(
      number: json['number'] as int?,
      row: json['row'] as String?,
      status: $enumDecodeNullable(_$SeatAvailabiltyEnumEnumMap, json['status']),
      price: (json['price'] as num?)?.toDouble() ?? 480,
    );

Map<String, dynamic> _$$SeatEntityImplToJson(_$SeatEntityImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'row': instance.row,
      'status': _$SeatAvailabiltyEnumEnumMap[instance.status],
      'price': instance.price,
    };

const _$SeatAvailabiltyEnumEnumMap = {
  SeatAvailabiltyEnum.available: 'available',
  SeatAvailabiltyEnum.reserved: 'reserved',
  SeatAvailabiltyEnum.selected: 'selected',
};
