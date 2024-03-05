import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';
import 'package:movie_booking_app/domain/entity/ticket_entity.dart';
import 'package:movie_booking_app/domain/repository/cinema_repository.dart';

sealed class BookMyShowUsecase {
  Future<Responser<TicketEntity?>> call({
    required CinemaEntity cinema,
    required ShowTimeEntity showTime,
    required List<SeatEntity> seats,
  });
}

class BookMyShowUsecaseImpl implements BookMyShowUsecase {
  final CinemaRepository cinemaRepository;
  const BookMyShowUsecaseImpl(this.cinemaRepository);

  @override
  Future<Responser<TicketEntity?>> call(
      {required CinemaEntity cinema,
      required ShowTimeEntity showTime,
      required List<SeatEntity> seats}) {
    return cinemaRepository.bookMyShow(
      cinema: cinema,
      showTime: showTime,
      seats: seats,
    );
  }
}
