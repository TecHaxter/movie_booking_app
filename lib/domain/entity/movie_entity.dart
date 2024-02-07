import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/domain/entity/genre_entity.dart';
part 'movie_entity.freezed.dart';
part 'movie_entity.g.dart';

@freezed
class MovieEntity with _$MovieEntity {
  const factory MovieEntity({
    int? id,
    String? title,
    String? poster,
    List<String>? thumbnails,
    bool? isAdult,
    List<GenreEntity>? genres,
    DateTime? releaseDate,
    int? starRating,
    String? trailerYoutubeId,
    String? overview,
  }) = _MovieEntity;

  factory MovieEntity.fromJson(Map<String, Object?> json) =>
      _$MovieEntityFromJson(json);
}
