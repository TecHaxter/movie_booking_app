// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketEntityImpl _$$TicketEntityImplFromJson(Map json) => _$TicketEntityImpl(
      id: json['id'] as int?,
      seats: (json['seats'] as List<dynamic>?)
          ?.map((e) => SeatEntity.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      cinema: json['cinema'] == null
          ? null
          : CinemaEntity.fromJson(
              Map<String, Object?>.from(json['cinema'] as Map)),
      showTime: json['show_time'] == null
          ? null
          : ShowTimeEntity.fromJson(
              Map<String, Object?>.from(json['show_time'] as Map)),
      bookedAt: json['booked_at'] == null
          ? null
          : DateTime.parse(json['booked_at'] as String),
    );

Map<String, dynamic> _$$TicketEntityImplToJson(_$TicketEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seats': instance.seats?.map((e) => e.toJson()).toList(),
      'cinema': instance.cinema?.toJson(),
      'show_time': instance.showTime?.toJson(),
      'booked_at': instance.bookedAt?.toIso8601String(),
    };
