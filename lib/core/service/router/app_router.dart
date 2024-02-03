import 'package:auto_route/auto_route.dart';
import 'package:movie_booking_app/presentation/views/detail/detail_view.dart';
import 'package:movie_booking_app/presentation/views/home/home_view.dart';
import 'package:movie_booking_app/presentation/views/ticket/ticket_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: DetailRoute.page,
        ),
        AutoRoute(
          page: TicketRoute.page,
        ),
      ];
}
