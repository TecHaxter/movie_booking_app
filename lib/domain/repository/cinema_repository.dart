import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';
import 'package:movie_booking_app/domain/entity/ticket_entity.dart';

abstract class CinemaRepository {
  Future<Responser<List<CinemaEntity>?>> fetchCinemasByMovie(
    MovieEntity movie, {
    required DateTime day,
  });
  Future<Responser<TicketEntity?>> bookShow({
    required CinemaEntity cinema,
    required ShowTimeEntity showTime,
    required List<SeatEntity> seats,
  });
  Future<Responser<List<TicketEntity>?>> fetchBookedShows();
}
