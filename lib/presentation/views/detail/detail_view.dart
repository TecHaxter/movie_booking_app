import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_event.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_event.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_state.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_state.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_event.dart';
import 'package:movie_booking_app/presentation/views/detail/widgets/date_and_theatre_selection_popup_buttons.dart';
import 'package:movie_booking_app/presentation/views/detail/widgets/movie_info_widget.dart';
import 'package:movie_booking_app/presentation/views/detail/widgets/movie_posters_widget.dart';
import 'package:movie_booking_app/presentation/views/detail/widgets/select_show_chips.dart';

@RoutePage()
class DetailView extends StatefulWidget {
  final MovieEntity movie;
  const DetailView({
    super.key,
    required this.movie,
  });

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  late MovieDetailsBloc movieDetailsBloc;
  @override
  void initState() {
    super.initState();
    movieDetailsBloc = context.read<MovieDetailsBloc>();
    if (widget.movie.trailerYoutubeId?.isEmpty ?? true) {
      movieDetailsBloc.add(
        OnFetchMovieDetails(widget.movie.id!),
      );
    } else {
      movieDetailsBloc.add(
        OnRevisitMovieDetails(widget.movie),
      );
      fetchCinemas(widget.movie);
    }
    context.read<ReservationInputBloc>().add(
          OnResetReservationInputEvent(),
        );
  }

  void fetchCinemas(MovieEntity movie) {
    context.read<CinemasBloc>().add(
          OnFetchAvailableCinemas(
            movie,
            day: DateTime.now(),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final BuildContext snacBarContext = context;
    return BlocListener<MovieDetailsBloc, MovieDetailsState>(
      listener: (context, state) {
        if (state is MovieDetailsFailed) {
          const snackBar = SnackBar(
            content: Text('Error occurred while fetching movie details'),
          );
          ScaffoldMessenger.of(snacBarContext).showSnackBar(snackBar);
        }
        if (state is MovieDetailsLoaded) {
          context.read<UpcomingMoviesBloc>().add(
                OnMovieDetailsFetched(state.movie),
              );
          fetchCinemas(state.movie);
        }
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              primary: true,
              pinned: true,
              expandedHeight: 240,
              collapsedHeight: kToolbarHeight,
              bottom: PreferredSize(
                preferredSize: Size.zero,
                child: Container(
                  height: 16,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ),
              ),
              flexibleSpace: const FlexibleSpaceBar(
                background: MoviePostersWidget(),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const MovieInfoWidget(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const DateAndTheatreSelectionPopupButtons(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            const SelectShowChips(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            BlocListener<ReservationBloc, ReservationState>(
              listener: (context, state) {
                if (state is ReservationFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        state.message,
                      ),
                    ),
                  );
                }
              },
              child: SliverToBoxAdapter(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      final input = context.read<ReservationInputBloc>().state;
                      context
                          .read<ReservationBloc>()
                          .add(OnChooseSeatRouteNavigationRequest(input));
                    },
                    child: const Text('Select Seats'),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
