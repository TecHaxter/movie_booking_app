import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/core/util/extensions/date_time_extension.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_state.dart';
import 'package:movie_booking_app/presentation/widgets/side_cut_clipper.dart';

class SelectShowChips extends StatefulWidget {
  const SelectShowChips({super.key});

  @override
  State<SelectShowChips> createState() => _SelectShowChipsState();
}

class _SelectShowChipsState extends State<SelectShowChips> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationInputBloc, ReservationInputState>(
        builder: (context, state) {
      final showTimes = state.cinema?.showtimes;
      final selectedShowTime = state.showTime;
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
                  .read<ReservationInputBloc>()
                  .add(OnSelectShowTime(showTimes![index]));
            },
            child: CustomPaint(
              painter: SideCutPainter(
                strokeColor: ColorPalette.tertiary,
                backgroundColor: showTimes?[index] == selectedShowTime
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
                    color: showTimes?[index] == selectedShowTime
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
