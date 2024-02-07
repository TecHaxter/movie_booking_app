import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
part 'show_time_entity.freezed.dart';
part 'show_time_entity.g.dart';

@freezed
class ShowTimeEntity with _$ShowTimeEntity {
  const factory ShowTimeEntity({
    int? id,
    MovieEntity? movie,
    @JsonKey(includeToJson: false) List<SeatEntity>? seats,
    DateTime? startTime,
    DateTime? endTime,
  }) = _ShowTimeEntity;

  factory ShowTimeEntity.fromJson(Map<String, Object?> json) =>
      _$ShowTimeEntityFromJson(json);
}
