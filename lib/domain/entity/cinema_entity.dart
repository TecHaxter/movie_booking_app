import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';
part 'cinema_entity.freezed.dart';
part 'cinema_entity.g.dart';

@freezed
class CinemaEntity with _$CinemaEntity {
  const factory CinemaEntity({
    int? id,
    String? name,
    String? location,
    List<MovieEntity>? movies,
    List<ShowTimeEntity>? showtimes,
  }) = _CinemaEntity;

  factory CinemaEntity.fromJson(Map<String, Object?> json) =>
      _$CinemaEntityFromJson(json);
}
