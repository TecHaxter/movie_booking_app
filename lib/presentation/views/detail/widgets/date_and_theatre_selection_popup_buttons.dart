import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/util/extensions/date_time_extension.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_state.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_state.dart';

class DateAndTheatreSelectionPopupButtons extends StatefulWidget {
  const DateAndTheatreSelectionPopupButtons({super.key});

  @override
  State<DateAndTheatreSelectionPopupButtons> createState() =>
      _DateAndTheatreSelectionPopupButtonsState();
}

class _DateAndTheatreSelectionPopupButtonsState
    extends State<DateAndTheatreSelectionPopupButtons> {
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
                    context
                        .read<ReservationInputBloc>()
                        .add(OnSelectDate(value));
                  });
                },
                child: BlocBuilder<ReservationInputBloc, ReservationInputState>(
                    builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(state.date?.dMMMyyyy ?? 'Select a Date'),
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
                    return BlocBuilder<ReservationInputBloc,
                            ReservationInputState>(
                        builder: (context, reservationState) {
                      return DropdownButton<int>(
                        isDense: true,
                        isExpanded: true,
                        hint: const Text('Select Cinema'),
                        icon: const Icon(
                          Icons.location_pin,
                          size: 14,
                        ),
                        value: reservationState.cinema?.id,
                        items: cinemas
                            .map(
                              (e) => DropdownMenuItem<int>(
                                value: e.id,
                                child: Text(e.name ?? ''),
                              ),
                            )
                            .toList(),
                        onChanged: (int? id) {
                          if (id == null) {
                            return;
                          }
                          final CinemaEntity? cinema =
                              cinemas.cast<CinemaEntity?>().firstWhere(
                                    (e) => e?.id == id,
                                    orElse: () => null,
                                  );
                          if (cinema == null) {
                            return;
                          }
                          context
                              .read<ReservationInputBloc>()
                              .add(OnSelectCinema(cinema));
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
