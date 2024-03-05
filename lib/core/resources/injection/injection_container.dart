import 'package:get_it/get_it.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/data/repository/movies_repository_impl.dart';
import 'package:movie_booking_app/data/repository/cinema_repository_impl.dart';
import 'package:movie_booking_app/data/source/movies_data_source.dart';
import 'package:movie_booking_app/data/source/ticket_data_source.dart';
import 'package:movie_booking_app/domain/repository/cinema_repository.dart';
import 'package:movie_booking_app/domain/repository/movies_repository.dart';
import 'package:movie_booking_app/domain/usecase/book_my_show_usecase.dart';
import 'package:movie_booking_app/domain/usecase/fetch_movie_details_usecase.dart';
import 'package:movie_booking_app/domain/usecase/fetch_cinemas_by_movie_usecase.dart';
import 'package:movie_booking_app/domain/usecase/fetch_my_bookings_usecase.dart';
import 'package:movie_booking_app/domain/usecase/fetch_upcoming_movies_usecase.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_bloc.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory<UpcomingMoviesBloc>(
    () => UpcomingMoviesBloc(
      locator.get<FetchUpcomingMoviesUsecase>(),
    ),
  );

  locator.registerFactory<MovieDetailsBloc>(
    () => MovieDetailsBloc(
      locator.get<FetchMovieDetailsUsecase>(),
    ),
  );

  locator.registerFactory<CinemasBloc>(
    () => CinemasBloc(
      locator.get<FetchCinemasByMovieUsecase>(),
    ),
  );

  locator.registerFactory<ReservationBloc>(
    () => ReservationBloc(
      locator.get<BookMyShowUsecase>(),
    ),
  );

  locator.registerFactory<ReservationInputBloc>(
    () => ReservationInputBloc(),
  );

  locator.registerFactory<BookingsBloc>(
    () => BookingsBloc(
      locator.get<FetchMyBookingsUsecase>(),
    ),
  );

  locator.registerLazySingleton<MoviesDataSource>(
    () => MoviesDataSourceImpl(AppServices.dio),
  );

  locator.registerLazySingleton<TicketDataSource>(
    () => TicketDataSourceImpl(
      AppServices.caching,
    ),
  );

  locator.registerLazySingleton<MoviesRepository>(
    () => MoviesRepositoryImpl(
      locator.get<MoviesDataSource>(),
    ),
  );

  locator.registerLazySingleton<CinemaRepository>(
    () => CinemaRepositoryImpl(
      locator.get<TicketDataSource>(),
    ),
  );

  locator.registerLazySingleton<FetchMovieDetailsUsecase>(
    () => FetchMovieDetailsUsecaseImpl(
      locator.get<MoviesRepository>(),
    ),
  );

  locator.registerLazySingleton<FetchUpcomingMoviesUsecase>(
    () => FetchUpcomingMoviesUsecaseImpl(
      locator.get<MoviesRepository>(),
    ),
  );

  locator.registerLazySingleton<FetchCinemasByMovieUsecase>(
    () => FetchCinemasByMovieUsecaseImpl(
      locator.get<CinemaRepository>(),
    ),
  );

  locator.registerLazySingleton<BookMyShowUsecase>(
    () => BookMyShowUsecaseImpl(
      locator.get<CinemaRepository>(),
    ),
  );

  locator.registerLazySingleton<FetchMyBookingsUsecase>(
    () => FetchMyBookingsUsecaseImpl(
      locator.get<CinemaRepository>(),
    ),
  );

  // locator.registerFactory(
  //   () => AllTodoBloc(
  //     locator<GetAllTodosUsecase>(),
  //   ),
  // );

  // locator.registerFactory(
  //   () => CreateEditTodoBloc(
  //     locator<SetTodoUsecase>(),
  //     locator<AllTodoBloc>(),
  //   ),
  // );

  // locator.registerLazySingleton<SqfliteService>(
  //   () => SqfliteServiceImpl(),
  // );

  // locator.registerLazySingleton<TodoDataSource>(
  //   () => TodoDataSourceImpl(locator<SqfliteService>()),
  // );

  // locator.registerLazySingleton<TodoRepository>(
  //   () => TodoRepositoryImpl(locator<TodoDataSource>()),
  // );

  // locator.registerLazySingleton<GetAllTodosUsecase>(
  //   () => GetAllTodosUsecaseImpl(
  //     locator<TodoRepository>(),
  //   ),
  // );

  // locator.registerLazySingleton<SetTodoUsecase>(
  //   () => SetTodoUsecaseImpl(
  //     locator<TodoRepository>(),
  //   ),
  // );
}
