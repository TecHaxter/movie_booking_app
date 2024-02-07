import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';
import 'package:movie_booking_app/domain/entity/ticket_entity.dart';
import 'dart:math' as math;

import 'package:movie_booking_app/domain/repository/cinema_repository.dart';

class CinemaRepositoryImpl implements CinemaRepository {
  final List<Duration> _showTimesDifferenceHardcoded = const [
    Duration(hours: 3),
    Duration(hours: 6),
    Duration(hours: 9),
    Duration(hours: 12),
    Duration(hours: 15),
    Duration(hours: 18),
  ];

  final List<CinemaEntity> _cinemasHardcoded = const [
    CinemaEntity(id: 1, name: 'Inox Jaipur'),
    CinemaEntity(id: 2, name: 'PVR Jaipur'),
    CinemaEntity(id: 3, name: 'Cinepolis Jaipur'),
    CinemaEntity(id: 4, name: 'First Cinema Jaipur'),
  ];

  @override
  Future<Responser<List<CinemaEntity>?>> fetchCinemasByMovie(
    MovieEntity movie, {
    required DateTime day,
  }) async {
    List<CinemaEntity> cinemas = _cinemasHardcoded
        .map(
          (e) => e.copyWith(
            movies: [movie],
            showtimes: _showTimesDifferenceHardcoded
                .map(
                  (e) => ShowTimeEntity(
                    id: math.Random(3631512069).nextInt(99),
                    movie: movie,
                    seats: seatsHardcodedData,
                    startTime: day.add(e),
                  ),
                )
                .toList(),
          ),
        )
        .toList();
    return success(cinemas);
  }

  @override
  Future<Responser<TicketEntity?>> bookShow(
      {required CinemaEntity cinema,
      required ShowTimeEntity showTime,
      required List<SeatEntity> seats}) {
    // TODO: implement bookShow
    throw UnimplementedError();
  }

  @override
  Future<Responser<List<TicketEntity>?>> fetchBookedShows() {
    // TODO: implement fetchBookedShows
    throw UnimplementedError();
  }
}
