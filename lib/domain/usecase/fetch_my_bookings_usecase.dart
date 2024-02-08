import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/domain/entity/ticket_entity.dart';
import 'package:movie_booking_app/domain/repository/cinema_repository.dart';

sealed class FetchMyBookingsUsecase {
  Future<Responser<List<TicketEntity>?>> call();
}

class FetchMyBookingsUsecaseImpl implements FetchMyBookingsUsecase {
  final CinemaRepository cinemaRepository;
  const FetchMyBookingsUsecaseImpl(this.cinemaRepository);
  @override
  Future<Responser<List<TicketEntity>?>> call() {
    return cinemaRepository.fetchBookedShows();
  }
}
