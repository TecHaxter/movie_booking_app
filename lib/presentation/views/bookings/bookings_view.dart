import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/core/util/extensions/date_time_extension.dart';
import 'package:movie_booking_app/domain/entity/ticket_entity.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_bloc.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_event.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_state.dart';

@RoutePage()
class BookingsView extends StatefulWidget {
  const BookingsView({super.key});

  @override
  State<BookingsView> createState() => _BookingsViewState();
}

class _BookingsViewState extends State<BookingsView> {
  @override
  void initState() {
    super.initState();
    context.read<BookingsBloc>().add(OnFetchBookings());
  }

  List<TicketEntity?> tickets = List.filled(20, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bookings'),
      ),
      body: BlocBuilder<BookingsBloc, BookingsState>(
        builder: (context, state) {
          if (state is BookingsEmpty) {
            return const Center(
              child: Text('You have no bookings'),
            );
          }
          if (state is BookingsFailed) {
            return const Center(
              child: Text('An error occured whike fetching your bookings'),
            );
          }
          if (state is BookingsLoaded) {
            tickets = state.tickets;
          }
          return ListView.builder(
            itemCount: tickets.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                AppServices.router.push(TicketRoute(ticket: tickets[index]!));
              },
              title: Text(tickets[index]?.showTime?.movie?.title ?? 'Loading'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (tickets[index]?.showTime?.startTime != null) ...{
                    Text(tickets[index]?.showTime?.startTime?.dMMMyyyy ?? ''),
                  },
                  if (tickets[index]?.cinema?.name?.isNotEmpty ?? false) ...{
                    Text(tickets[index]?.cinema?.name ?? ''),
                  }
                ],
              ),
              leading:
                  (tickets[index]?.showTime?.movie?.poster?.isNotEmpty ?? false)
                      ? CircleAvatar(
                          backgroundImage: NetworkImage(
                            tickets[index]!.showTime!.movie!.poster!,
                          ),
                        )
                      : null,
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
