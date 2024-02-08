import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_state.dart';

class CinemaSeatsGrid extends StatelessWidget {
  const CinemaSeatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocBuilder<ReservationInputBloc, ReservationInputState>(
          builder: (context, state) {
        List<SeatEntity> seats = state.showTime?.seats ?? [];
        int? columnCount =
            seats.where((element) => element.row == seats.first.row).length;
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
                      color: seats[i].status == SeatAvailabiltyEnum.available
                          ? ColorPalette.surface
                          : seats[i].status == SeatAvailabiltyEnum.selected
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
                        if (seats[i].status == SeatAvailabiltyEnum.reserved) {
                          return;
                        }
                        context.read<ReservationInputBloc>().add(OnTapSeat(i));
                      },
                      child: Icon(
                        Icons.chair,
                        color: seats[i].status == SeatAvailabiltyEnum.available
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
    );
  }
}
