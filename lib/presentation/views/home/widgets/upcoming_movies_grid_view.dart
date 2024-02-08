import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_state.dart';
import 'package:movie_booking_app/presentation/widgets/app_network_image.dart';

class UpcomingMoviesGridView extends StatefulWidget {
  const UpcomingMoviesGridView({super.key});

  @override
  State<UpcomingMoviesGridView> createState() => _UpcomingMoviesGridViewState();
}

class _UpcomingMoviesGridViewState extends State<UpcomingMoviesGridView> {
  List<MovieEntity?> movies = [];

  int initialShimmerMoviesLength = 10;

  @override
  void initState() {
    super.initState();
    movies.addAll(List.filled(initialShimmerMoviesLength, null));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpcomingMoviesBloc, UpcomingMoviesState>(
      listener: (context, state) {
        if (state is UpcomingMoviesLoaded) {
          movies = state.movies;
        }
      },
      child: SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        sliver: BlocBuilder<UpcomingMoviesBloc, UpcomingMoviesState>(
          builder: (context, state) {
            return SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 9 / 16,
              ),
              itemCount: movies.length,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Stack(
                        children: [
                          if (movies[index]?.poster?.isNotEmpty ?? false) ...{
                            Positioned.fill(
                              child: InkWell(
                                onTap: () {
                                  AppServices.router.push(
                                    DetailRoute(
                                      movie: movies[index]!,
                                    ),
                                  );
                                },
                                child: AppNetworkImage(
                                  url: movies[index]!.poster!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          },
                          if (movies[index]?.isAdult ?? false) ...{
                            Positioned(
                              top: 6,
                              right: 6,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorPalette.surface,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                child: const Text(
                                  'A',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          },
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  RichText(
                    text: TextSpan(
                      text: movies[index]?.title ?? 'Loading',
                      // children: const [
                      //   TextSpan(text: '\n'),
                      //   TextSpan(text: 'Part One of Four'),
                      // ],
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
