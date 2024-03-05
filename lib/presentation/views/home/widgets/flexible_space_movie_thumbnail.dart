import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_state.dart';
import 'package:movie_booking_app/presentation/widgets/app_network_image.dart';

class FlexibleSpaceMovieThumbnail extends StatefulWidget {
  const FlexibleSpaceMovieThumbnail({super.key});

  @override
  State<FlexibleSpaceMovieThumbnail> createState() =>
      _FlexibleSpaceMovieThumbnailState();
}

class _FlexibleSpaceMovieThumbnailState
    extends State<FlexibleSpaceMovieThumbnail> {
  MovieEntity? hero;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingMoviesBloc, UpcomingMoviesState>(
      builder: (context, state) {
        if (state is UpcomingMoviesLoaded) {
          hero = state.movies.isNotEmpty ? state.movies.first : null;
        }
        return FlexibleSpaceBar(
          background: Stack(
            children: [
              if (hero?.poster?.isNotEmpty ?? false) ...{
                Positioned.fill(
                  child: AppNetworkImage(
                    url: hero!.poster!,
                    fit: BoxFit.cover,
                  ),
                ),
              },
              if (hero?.title?.isNotEmpty ?? false) ...{
                Positioned(
                  left: 16,
                  bottom: 32,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hero?.title ?? '',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          AppServices.router.push(
                            DetailRoute(movie: hero!),
                          );
                        },
                        child: const Text('Show times'),
                      ),
                    ],
                  ),
                ),
              },
              if (hero?.trailerYoutubeId?.isNotEmpty ?? false) ...{
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      AppServices.router.push(
                        TrailerRoute(
                          uri: hero!.trailerYoutubeId!,
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.play_arrow,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              },
            ],
          ),
        );
      },
    );
  }
}
