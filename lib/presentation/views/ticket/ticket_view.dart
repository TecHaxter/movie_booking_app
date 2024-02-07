import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/presentation/views/ticket/widgets/ticket_shape.dart';

@RoutePage()
class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.close),
        title: const Text('Your Ticket'),
      ),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TicketShape(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Use this QR code to enter the cinema and collect purched food and drink',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorPalette.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                AppServices.router.pop();
              },
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
