import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/util/extensions/date_time_extension.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_state.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_state.dart';

class DateAndTheatreSelectionPopupButtons extends StatelessWidget {
  const DateAndTheatreSelectionPopupButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () async {
                  final now = DateTime.now();
                  showDatePicker(
                    context: context,
                    firstDate: now,
                    lastDate: now.add(
                      const Duration(days: 30),
                    ),
                  ).then((value) {
                    if (value == null) {
                      return;
                    }
                    context.read<ReservationBloc>().add(OnSelectDate(value));
                  });
                },
                child: BlocBuilder<ReservationBloc, ReservationState>(
                    builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(state.date?.dMMMyyyy ?? 'Today, 17 May'),
                      const Icon(
                        Icons.arrow_drop_down,
                      ),
                    ],
                  );
                }),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: InputDecorator(
                decoration: const InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: BlocBuilder<CinemasBloc, CinemasState>(
                      builder: (context, cinemasState) {
                    List<CinemaEntity> cinemas = [];
                    if (cinemasState is CinemasLoaded) {
                      cinemas = cinemasState.cinemas;
                    }
                    return BlocBuilder<ReservationBloc, ReservationState>(
                        builder: (context, reservationState) {
                      return DropdownButton<CinemaEntity>(
                        isDense: true,
                        isExpanded: true,
                        hint: const Text('Change Location'),
                        icon: const Icon(
                          Icons.location_pin,
                          size: 14,
                        ),
                        value: cinemas.isEmpty ? null : reservationState.cinema,
                        items: cinemas
                            .map(
                              (e) => DropdownMenuItem<CinemaEntity>(
                                value: e,
                                child: Text(e.name!),
                              ),
                            )
                            .toList(),
                        onChanged: (CinemaEntity? value) {
                          if (value == null) {
                            return;
                          }
                          context
                              .read<ReservationBloc>()
                              .add(OnSelectCinema(value));
                        },
                      );
                    });
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
