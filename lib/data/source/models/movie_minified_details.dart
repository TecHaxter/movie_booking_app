import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_minified_details.freezed.dart';
part 'movie_minified_details.g.dart';

@freezed
class MovieMinifiedDetails with _$MovieMinifiedDetails {
  const factory MovieMinifiedDetails({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _MovieMinifiedDetails;

  factory MovieMinifiedDetails.fromJson(Map<String, Object?> json) =>
      _$MovieMinifiedDetailsFromJson(json);
}
