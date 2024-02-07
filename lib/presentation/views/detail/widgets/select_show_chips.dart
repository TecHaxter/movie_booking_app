import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/core/util/extensions/date_time_extension.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_state.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_state.dart';
import 'package:movie_booking_app/presentation/widgets/side_cut_clipper.dart';

class SelectShowChips extends StatelessWidget {
  const SelectShowChips({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationBloc, ReservationState>(
        builder: (context, state) {
      List<ShowTimeEntity>? showTimes = state.cinema?.showtimes;
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 9 / 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: showTimes?.length ?? 0,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              context
                  .read<ReservationBloc>()
                  .add(OnSelectShowTime(showTimes![index]));
            },
            child: CustomPaint(
              painter: SideCutPainter(
                strokeColor: ColorPalette.tertiary,
                backgroundColor: showTimes?[index] == state.showTime
                    ? ColorPalette.tertiary
                    : Colors.white,
                strokeWidth: 1.5,
                clipper: const SideCutClipper(
                  sideCutRadius: 8,
                ),
              ),
              child: Center(
                child: Text(
                  showTimes?[index].startTime?.hhmma ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: showTimes?[index] == state.showTime
                        ? Colors.white
                        : ColorPalette.tertiary,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
