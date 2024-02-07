import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';
part 'ticket_entity.freezed.dart';
part 'ticket_entity.g.dart';

@freezed
class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    int? id,
    List<SeatEntity>? seats,
    CinemaEntity? cinema,
    ShowTimeEntity? showTime,
    DateTime? bookedAt,
  }) = _TicketEntity;

  factory TicketEntity.fromJson(Map<String, Object?> json) =>
      _$TicketEntityFromJson(json);
}
