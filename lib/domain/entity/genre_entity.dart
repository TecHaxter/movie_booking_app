import 'package:freezed_annotation/freezed_annotation.dart';
part 'genre_entity.freezed.dart';
part 'genre_entity.g.dart';

@freezed
class GenreEntity with _$GenreEntity {
  const factory GenreEntity({
    int? id,
    String? name,
  }) = _GenreEntity;

  factory GenreEntity.fromJson(Map<String, Object?> json) =>
      _$GenreEntityFromJson(json);
}
