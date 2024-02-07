import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/core/util/mapper/model_mapper.dart';
import 'package:movie_booking_app/data/source/models/genre_data.dart';
import 'package:movie_booking_app/data/source/models/production_company_data.dart';
import 'package:movie_booking_app/data/source/models/production_country_data.dart';
import 'package:movie_booking_app/data/source/models/spoken_language_data.dart';
import 'package:movie_booking_app/domain/entity/genre_entity.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
part 'movie_details_data.freezed.dart';
part 'movie_details_data.g.dart';

@freezed
class MovieDetailsData
    with _$MovieDetailsData
    implements ModelMapper<MovieEntity> {
  const MovieDetailsData._();

  const factory MovieDetailsData({
    bool? adult,
    String? backdropPath,
    dynamic belongsToCollection,
    int? budget,
    List<int>? genreIds,
    List<GenreData>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    List<ProductionCompanyData>? productionCompanies,
    List<ProductionCountryData>? productionCountries,
    String? releaseDate,
    int? revenue,
    int? runtime,
    List<SpokenLanguageData>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _MovieDetailsData;

  factory MovieDetailsData.fromJson(Map<String, Object?> json) =>
      _$MovieDetailsDataFromJson(json);

  @override
  MovieEntity toEntity(obj) {
    return MovieEntity(
      id: id,
      title: title,
      poster: 'https://image.tmdb.org/t/p/w500$posterPath',
      thumbnails: null,
      isAdult: adult,
      genres: genres
              ?.map(
                (e) => GenreEntity(
                  id: e.id,
                  name: e.name,
                ),
              )
              .toList() ??
          genreIds
              ?.map(
                (e) => GenreEntity(id: e),
              )
              .toList(),
      releaseDate: releaseDate?.isNotEmpty ?? false
          ? DateTime.tryParse(releaseDate!)
          : null,
      starRating: (popularity ?? 500.0) ~/ 5000,
      trailerYoutubeId: null,
      overview: overview,
    );
  }
}
