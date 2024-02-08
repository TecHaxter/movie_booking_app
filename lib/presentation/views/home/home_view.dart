import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_event.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_state.dart';
import 'package:movie_booking_app/presentation/views/home/widgets/flexible_space_movie_thumbnail.dart';
import 'package:movie_booking_app/presentation/views/home/widgets/upcoming_movies_grid_view.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _titleColorTween;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    context.read<UpcomingMoviesBloc>().add(OnFetchUpcomingMovies());

    _scrollController = ScrollController();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    _titleColorTween = ColorTween(
      begin: const Color.fromRGBO(255, 255, 255, 1), // Color when expanded
      end: Colors.black, // Color when shrunk
    ).animate(_controller);

    // Add a listener to the scroll controller to trigger the animation on scroll
    _scrollController.addListener(() {
      if (_scrollController.offset > (400 - kToolbarHeight) &&
          _controller.value == 1.0) {
        _controller
            .reverse(); // Start the animation when scrolled beyond a certain offset
        setState(() {});
      } else if (_scrollController.offset < (400 - kToolbarHeight) &&
          _controller.value == 0.0) {
        _controller.forward(); // Reverse the animation when scrolling back up
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpcomingMoviesBloc, UpcomingMoviesState>(
      listener: (BuildContext context, state) {
        if (state is UpcomingMoviesFailed) {
          const snackBar = SnackBar(
            content: Text('Error occurred while fetching upcoming movies'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state is UpcomingMoviesEmpty) {
          const snackBar = SnackBar(
            content: Text('No upcoming movies found'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Scaffold(
        endDrawer: Drawer(
          shape: const RoundedRectangleBorder(),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 64,
              ),
              ListTile(
                title: const Text('My Tickets'),
                selected: false,
                onTap: () {
                  AppServices.router.push(const BookingsRoute());
                },
              ),
            ],
          ),
        ),
        body: NotificationListener<ScrollEndNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification.metrics.pixels >=
                scrollNotification.metrics.maxScrollExtent) {
              context.read<UpcomingMoviesBloc>().add(OnFetchUpcomingMovies());
            }
            return true;
          },
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                primary: true,
                pinned: true,
                actions: [
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          color: _titleColorTween.value,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ],
                expandedHeight: 400,
                collapsedHeight: kToolbarHeight,
                bottom: PreferredSize(
                  preferredSize: const Size(double.maxFinite, 16),
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
                flexibleSpace: const FlexibleSpaceMovieThumbnail(),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Upcoming Movies',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              const UpcomingMoviesGridView(),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              BlocBuilder<UpcomingMoviesBloc, UpcomingMoviesState>(
                builder: (context, state) {
                  if (state is UpcomingMoviesLoading) {
                    return const SliverToBoxAdapter(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  return const SliverToBoxAdapter();
                },
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
