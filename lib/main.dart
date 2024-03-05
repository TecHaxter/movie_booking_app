import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/resources/injection/injection_container.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/core/theme/theme_data.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator.get<UpcomingMoviesBloc>(),
        ),
        BlocProvider(
          create: (_) => locator.get<MovieDetailsBloc>(),
        ),
        BlocProvider(
          create: (_) => locator.get<CinemasBloc>(),
        ),
        BlocProvider(
          create: (_) => locator.get<ReservationBloc>(),
        ),
        BlocProvider(
          create: (_) => locator.get<ReservationInputBloc>(),
        ),
        BlocProvider(
          create: (_) => locator.get<BookingsBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Movie Booking App',
        theme: AppTheme.light,
        routerConfig: AppServices.router.config(),
      ),
    );
  }
}
