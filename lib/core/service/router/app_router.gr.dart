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
    DetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailView(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    TicketRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TicketView(),
      );
    },
  };
}

/// generated route for
/// [DetailView]
class DetailRoute extends PageRouteInfo<void> {
  const DetailRoute({List<PageRouteInfo>? children})
      : super(
          DetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class TicketRoute extends PageRouteInfo<void> {
  const TicketRoute({List<PageRouteInfo>? children})
      : super(
          TicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'TicketRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
