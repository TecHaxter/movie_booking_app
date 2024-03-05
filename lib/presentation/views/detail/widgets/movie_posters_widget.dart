import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_state.dart';
import 'package:movie_booking_app/presentation/widgets/app_network_image.dart';

class MoviePostersWidget extends StatelessWidget {
  const MoviePostersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        MovieDetailsLoaded? loadedState =
            state is MovieDetailsLoaded ? state : null;
        return DefaultTabController(
          length: loadedState?.movie.thumbnails?.length ?? 0,
          child: Builder(builder: (context) {
            return Stack(
              children: [
                if (loadedState?.movie.thumbnails?.isNotEmpty ?? false) ...{
                  Positioned.fill(
                    child: TabBarView(
                      children: [
                        ...loadedState!.movie.thumbnails!
                            .map(
                              (e) => AppNetworkImage(
                                url: e,
                                width: double.maxFinite,
                                height: double.maxFinite,
                                fit: BoxFit.cover,
                              ),
                            )
                            .toList(),
                      ],
                    ),
                  ),
                },
                Positioned(
                  bottom: 24,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 8,
                    child: TabBar(
                      tabs: [
                        for (int i = 0;
                            i < (DefaultTabController.of(context).length);
                            i++) ...{
                          Tab(
                            icon: Container(
                              width: 8,
                              height: 8,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorPalette.secondary.withOpacity(0.3),
                              ),
                            ),
                          ),
                        },
                      ],
                      tabAlignment: TabAlignment.center,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                      indicatorPadding:
                          const EdgeInsets.symmetric(horizontal: 4),
                      dividerColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: const BoxDecoration(
                        color: ColorPalette.tertiary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                if (loadedState?.movie.trailerYoutubeId?.isNotEmpty ??
                    false) ...{
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        AppServices.router.push(
                          TrailerRoute(
                            uri: loadedState!.movie.trailerYoutubeId!,
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
            );
          }),
        );
      },
    );
  }
}
