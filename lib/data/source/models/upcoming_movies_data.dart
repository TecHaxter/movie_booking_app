import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/data/source/models/movie_details_data.dart';
part 'upcoming_movies_data.freezed.dart';
part 'upcoming_movies_data.g.dart';

@freezed
class UpcomingMoviesData with _$UpcomingMoviesData {
  const factory UpcomingMoviesData({
    Dates? dates,
    int? page,
    List<MovieDetailsData>? results,
    int? totalPages,
    int? totalResults,
  }) = _UpcomingMoviesData;

  factory UpcomingMoviesData.fromJson(Map<String, Object?> json) =>
      _$UpcomingMoviesDataFromJson(json);
}

@freezed
class Dates with _$Dates {
  const factory Dates({
    DateTime? maximum,
    DateTime? minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, Object?> json) => _$DatesFromJson(json);
}
