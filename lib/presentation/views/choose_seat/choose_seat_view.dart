import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_state.dart';
import 'package:movie_booking_app/presentation/views/choose_seat/widgets/cinema_seats_grid.dart';
import 'package:movie_booking_app/presentation/views/choose_seat/widgets/screen_painter.dart';
import 'package:movie_booking_app/presentation/views/choose_seat/widgets/booking_button.dart';

@RoutePage()
class ChooseSeatView extends StatefulWidget {
  const ChooseSeatView({super.key});

  @override
  State<ChooseSeatView> createState() => _ChooseSeatViewState();
}

class _ChooseSeatViewState extends State<ChooseSeatView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ReservationBloc, ReservationState>(
      listener: (context, state) {
        if (state is ReservationSuccessful) {
          AppServices.router.push(
            TicketRoute(ticket: state.ticket),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Choose Seat'),
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(
                width: double.maxFinite,
                height: 100,
                child: CustomPaint(
                  painter: ScreenPainter(
                    thickness: 8.0,
                  ),
                ),
              ),
            ),
            CinemaSeatsGrid(),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: ColorPalette.tertiary,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Selected'),
                  Spacer(),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: ColorPalette.secondary,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Reserved'),
                  Spacer(),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: ColorPalette.surface,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Available'),
                ],
              ),
            ),
            Spacer(),
            BookingButton(),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
