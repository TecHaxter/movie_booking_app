import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_state.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_event.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          BlocBuilder<ReservationInputBloc, ReservationInputState>(
              builder: (context, state) {
            final totalPrice = state.selectedSeats
                ?.where((e) => e.status == SeatAvailabiltyEnum.selected)
                .map((e) => e.price)
                .fold(0.0, (total, price) => total + (price ?? 0));
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '₹${totalPrice ?? 0}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  '${state.selectedSeats?.length ?? 0} Tickets',
                ),
              ],
            );
          }),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              final input = context.read<ReservationInputBloc>().state;
              context.read<ReservationBloc>().add(OnBookMyShow(input));
            },
            child: const Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
