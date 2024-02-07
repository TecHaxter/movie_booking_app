import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/core/resources/injection/injection_container.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/show/show_cubit.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_bloc.dart';

void main() {
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
      ],
      child: MaterialApp.router(
        title: 'Movie Booking App',
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: ColorPalette.primary,
            secondary: ColorPalette.secondary,
            tertiary: ColorPalette.tertiary,
            surface: ColorPalette.surface,
            background: Colors.white,
          ),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 2.0,
          ),
          dropdownMenuTheme: DropdownMenuThemeData(
              inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1.5,
                color: ColorPalette.primary,
                // color: ColorPalette.secondary,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          )),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
              ),
              side: const MaterialStatePropertyAll(
                BorderSide(
                  width: 1.5,
                  // color: ColorPalette.secondary,
                ),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              foregroundColor: const MaterialStatePropertyAll(
                ColorPalette.primary, //change background color of button
              ),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 32,
                ),
              ),
              minimumSize: const MaterialStatePropertyAll(Size(0, 0)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              textStyle: const MaterialStatePropertyAll(
                TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        routerConfig: AppServices.router.config(),
      ),
    );
  }
}
