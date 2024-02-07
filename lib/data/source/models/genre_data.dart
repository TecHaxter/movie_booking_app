import 'package:freezed_annotation/freezed_annotation.dart';
part 'genre_data.freezed.dart';
part 'genre_data.g.dart';

@freezed
class GenreData with _$GenreData {
  const factory GenreData({
    int? id,
    String? name,
  }) = _GenreData;

  factory GenreData.fromJson(Map<String, Object?> json) =>
      _$GenreDataFromJson(json);
}
