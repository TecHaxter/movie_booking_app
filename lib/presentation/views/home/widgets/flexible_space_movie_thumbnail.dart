import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_state.dart';
import 'package:movie_booking_app/presentation/widgets/app_network_image.dart';
import 'package:movie_booking_app/presentation/widgets/shimmer.dart';

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
    return BlocListener<UpcomingMoviesBloc, UpcomingMoviesState>(
      listener: (context, state) {
        if (state is UpcomingMoviesLoaded) {
          hero = state.movies.isNotEmpty ? state.movies.first : null;
        }
      },
      child: BlocBuilder<UpcomingMoviesBloc, UpcomingMoviesState>(
          builder: (context, state) {
        return FlexibleSpaceBar(
          background: ShimmerLoading(
            isLoading: hero == null,
            child: Stack(
              children: [
                if (hero?.poster?.isNotEmpty ?? false) ...{
                  Positioned.fill(
                    child: AppNetworkImage(
                      url: hero!.poster!,
                      fit: BoxFit.cover,
                    ),
                  ),
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
                          onPressed: () {},
                          child: const Text('Show times'),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        AppServices.router.push(
                          TrailerRoute(
                            uri:
                                'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
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
          ),
        );
      }),
    );
  }
}
