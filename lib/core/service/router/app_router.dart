import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/entity/ticket_entity.dart';
import 'package:movie_booking_app/presentation/views/bookings/bookings_view.dart';
import 'package:movie_booking_app/presentation/views/choose_seat/choose_seat_view.dart';
import 'package:movie_booking_app/presentation/views/detail/detail_view.dart';
import 'package:movie_booking_app/presentation/views/home/home_view.dart';
import 'package:movie_booking_app/presentation/views/ticket/ticket_view.dart';
import 'package:movie_booking_app/presentation/views/trailer/trailer_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: DetailRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: ChooseSeatRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: TicketRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: TrailerRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: BookingsRoute.page,
          // initial: true,
        ),
      ];
}
