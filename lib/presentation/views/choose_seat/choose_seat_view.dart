import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_state.dart';
import 'package:movie_booking_app/presentation/views/choose_seat/widgets/screen_painter.dart';

@RoutePage()
class ChooseSeatView extends StatefulWidget {
  const ChooseSeatView({super.key});

  @override
  State<ChooseSeatView> createState() => _ChooseSeatViewState();
}

class _ChooseSeatViewState extends State<ChooseSeatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Choose Seat'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const Padding(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<ReservationBloc, ReservationState>(
                builder: (context, state) {
              final List<SeatEntity>? seats = state.seats;
              int? columnCount = seats!
                  .where((element) => element.row == seats.first.row)
                  .length;
              log(seats.toString());
              return StaggeredGrid.count(
                axisDirection: AxisDirection.down,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                crossAxisCount: columnCount > 0 ? (columnCount * 2) - 1 : 0,
                children: [
                  for (int i = 0; i < seats.length; i++) ...{
                    if (seats[i].number == 0) ...{
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 2,
                        child: Center(child: Text(seats[i].row ?? '')),
                      ),
                    } else if (seats[i].number == null) ...{
                      const StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: SizedBox(),
                      ),
                    } else if (seats[i].row == null) ...{
                      const StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: SizedBox(),
                      ),
                    } else ...{
                      if (seats[i].status == SeatAvailabiltyEnum.reserved) ...{
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2,
                          child: Icon(
                            Icons.chair,
                            color:
                                seats[i].status == SeatAvailabiltyEnum.available
                                    ? ColorPalette.surface
                                    : seats[i].status ==
                                            SeatAvailabiltyEnum.selected
                                        ? ColorPalette.tertiary
                                        : ColorPalette.secondary,
                          ),
                        )
                      } else ...{
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2,
                          child: InkWell(
                            onTap: () {
                              if (seats[i].status ==
                                  SeatAvailabiltyEnum.reserved) {
                                return;
                              }
                              context.read<ReservationBloc>().add(OnTapSeat(i));
                            },
                            child: Icon(
                              Icons.chair,
                              color: seats[i].status ==
                                      SeatAvailabiltyEnum.available
                                  ? ColorPalette.surface
                                  : ColorPalette.tertiary,
                            ),
                          ),
                        ),
                      },
                    },
                  },
                ],
              );
            }),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
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
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                BlocBuilder<ReservationBloc, ReservationState>(
                    builder: (context, state) {
                  final totalTickets = state.seats
                          ?.where(
                              (e) => e.status == SeatAvailabiltyEnum.selected)
                          .length ??
                      0;
                  final totalPrice = state.seats
                      ?.where((e) => e.status == SeatAvailabiltyEnum.selected)
                      .map((e) => e.price)
                      .fold(0.0, (total, price) => total + (price ?? 0));
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$$totalPrice',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        '$totalTickets Tickets',
                      ),
                    ],
                  );
                }),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // context.read<ShowCubit>();
                  },
                  child: const Text('Book Now'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          // GridView.builder(
          //   padding: const EdgeInsets.symmetric(horizontal: 16),
          //   physics: const NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   itemCount: inoxShow.seats?.length ?? 0,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: inoxShow.seats
          //             ?.where(
          //                 (element) => element.row == inoxShow.seats?.first.row)
          //             .length ??
          //         0,
          //     mainAxisSpacing: 4,
          //     crossAxisSpacing: 4,
          //   ),
          //   itemBuilder: (context, index) {
          //     if (inoxShow.seats?[index].row == null ||
          //         inoxShow.seats?[index].number == null) {
          //       return const SizedBox();
          //     }
          //     Color color = ColorPalette.surface;
          //     if (inoxShow.seats?[index].status ==
          //         SeatAvailabiltyEnum.reserved) {
          //       color = ColorPalette.secondary;
          //     }
          //     if (inoxShow.seats?[index].status ==
          //         SeatAvailabiltyEnum.selected) {
          //       color = ColorPalette.tertiary;
          //     }
          //     // return Icon(
          //     //   Icons.chair,
          //     //   color: color,
          //     // );
          //     return Container(
          //       color: color,
          //       child: Text(
          //         inoxShow.seats?[index].number?.toString() ?? '',
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
