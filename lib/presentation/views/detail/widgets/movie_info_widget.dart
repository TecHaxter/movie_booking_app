import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/util/extensions/bool_extension.dart';
import 'package:movie_booking_app/core/util/extensions/date_time_extension.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_state.dart';
import 'package:movie_booking_app/presentation/widgets/shimmer.dart';

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
                ShimmerLoading(
                  isLoading: (state is MovieDetailsLoaded).not,
                  child: Text(
                    movie?.title ?? 'Doctor Strange in Multiverse',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ShimmerLoading(
                  isLoading: (state is MovieDetailsLoaded).not,
                  child: RichText(
                    text: TextSpan(
                      text: 'Genre: ',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text:
                              movie?.genres?.map((e) => '${e.name}, ').join() ??
                                  'Animation, Science Fiction, Comedy',
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ShimmerLoading(
                  isLoading: (state is MovieDetailsLoaded).not,
                  child: RichText(
                    text: TextSpan(
                      text: 'Release: ',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: movie?.releaseDate?.dMMMyyyy ?? '2024-02-28',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ShimmerLoading(
                  isLoading: (state is MovieDetailsLoaded).not,
                  child: RichText(
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
                          text: movie?.overview ??
                              "While the Second World War rages, the teenage Mahito, haunted by his mother's tragic death, is relocated from Tokyo to the serene rural home of his new stepmother Natsuko, a woman who bears a striking resemblance to the boy's mother. As he tries to adjust, this strange new world grows even stranger following the appearance of a persistent gray heron, who perplexes and bedevils Mahito, dubbing him the \"long-awaited one.\"",
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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
