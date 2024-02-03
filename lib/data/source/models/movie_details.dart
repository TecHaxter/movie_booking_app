import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/data/source/models/genre.dart';
import 'package:movie_booking_app/data/source/models/production_company.dart';
import 'package:movie_booking_app/data/source/models/production_country.dart';
import 'package:movie_booking_app/data/source/models/spoken_language.dart';
part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    bool? adult,
    String? backdropPath,
    dynamic belongsToCollection,
    int? budget,
    List<Genre>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    List<ProductionCompany>? productionCompanies,
    List<ProductionCountry>? productionCountries,
    String? releaseDate,
    int? revenue,
    int? runtime,
    List<SpokenLanguage>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, Object?> json) =>
      _$MovieDetailsFromJson(json);
}
