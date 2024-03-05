import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/util/extensions/date_time_extension.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_state.dart';

class MovieInfoWidget extends StatelessWidget {
  const MovieInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        MovieEntity? movie;
        if (state is MovieDetailsLoaded) {
          movie = state.movie;
        }
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie?.title ?? '',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Genre: ',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: movie?.genres?.map((e) => '${e.name}, ').join() ??
                            '',
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Release: ',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: movie?.releaseDate?.dMMMyyyy ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: 'Overview: ',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: movie?.overview ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
