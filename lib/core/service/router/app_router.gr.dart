// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BookingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookingsView(),
      );
    },
    ChooseSeatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChooseSeatView(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailView(
          key: args.key,
          movie: args.movie,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    TicketRoute.name: (routeData) {
      final args = routeData.argsAs<TicketRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TicketView(
          key: args.key,
          ticket: args.ticket,
        ),
      );
    },
    TrailerRoute.name: (routeData) {
      final args = routeData.argsAs<TrailerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TrailerView(
          key: args.key,
          uri: args.uri,
        ),
      );
    },
  };
}

/// generated route for
/// [BookingsView]
class BookingsRoute extends PageRouteInfo<void> {
  const BookingsRoute({List<PageRouteInfo>? children})
      : super(
          BookingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChooseSeatView]
class ChooseSeatRoute extends PageRouteInfo<void> {
  const ChooseSeatRoute({List<PageRouteInfo>? children})
      : super(
          ChooseSeatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChooseSeatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailView]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    Key? key,
    required MovieEntity movie,
    List<PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            movie: movie,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const PageInfo<DetailRouteArgs> page = PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.movie,
  });

  final Key? key;

  final MovieEntity movie;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, movie: $movie}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TicketView]
class TicketRoute extends PageRouteInfo<TicketRouteArgs> {
  TicketRoute({
    Key? key,
    required TicketEntity ticket,
    List<PageRouteInfo>? children,
  }) : super(
          TicketRoute.name,
          args: TicketRouteArgs(
            key: key,
            ticket: ticket,
          ),
          initialChildren: children,
        );

  static const String name = 'TicketRoute';

  static const PageInfo<TicketRouteArgs> page = PageInfo<TicketRouteArgs>(name);
}

class TicketRouteArgs {
  const TicketRouteArgs({
    this.key,
    required this.ticket,
  });

  final Key? key;

  final TicketEntity ticket;

  @override
  String toString() {
    return 'TicketRouteArgs{key: $key, ticket: $ticket}';
  }
}

/// generated route for
/// [TrailerView]
class TrailerRoute extends PageRouteInfo<TrailerRouteArgs> {
  TrailerRoute({
    Key? key,
    required String uri,
    List<PageRouteInfo>? children,
  }) : super(
          TrailerRoute.name,
          args: TrailerRouteArgs(
            key: key,
            uri: uri,
          ),
          initialChildren: children,
        );

  static const String name = 'TrailerRoute';

  static const PageInfo<TrailerRouteArgs> page =
      PageInfo<TrailerRouteArgs>(name);
}

class TrailerRouteArgs {
  const TrailerRouteArgs({
    this.key,
    required this.uri,
  });

  final Key? key;

  final String uri;

  @override
  String toString() {
    return 'TrailerRouteArgs{key: $key, uri: $uri}';
  }
}
