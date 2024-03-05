import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/core/util/extensions/date_time_extension.dart';
import 'package:movie_booking_app/domain/entity/ticket_entity.dart';
import 'package:movie_booking_app/presentation/widgets/app_network_image.dart';
import 'package:movie_booking_app/presentation/widgets/side_cut_clipper.dart';
import 'dart:math' as math;

class TicketShape extends StatelessWidget {
  final TicketEntity ticket;
  const TicketShape({
    super.key,
    required this.ticket,
  });

  Widget ticketChild(
    double ticketHeight, {
    required int thumbnailIndex,
  }) =>
      Column(
        children: [
          if ((ticket.showTime?.movie?.thumbnails?.length ?? 0) >
              thumbnailIndex) ...{
            AppNetworkImage(
              url: ticket.showTime?.movie?.thumbnails?[thumbnailIndex] ??
                  'https://res.cloudinary.com/dbxjcu3tp/image/upload/v1706106562/Quantumcon3%20Styles/Attack%20on%20Titans/Dark-Attackontitans-G-1.jpg',
              fit: BoxFit.cover,
              height: ticketHeight * 3 / 5,
              width: double.maxFinite,
            ),
          },
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                if (ticket.showTime?.startTime != null) ...{
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: 'Date: ',
                            style: const TextStyle(
                              color: ColorPalette.tertiary,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    ticket.showTime?.startTime?.dMMMyyyy ?? '',
                                style: const TextStyle(
                                  color: ColorPalette.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: 'Time: ',
                            style: const TextStyle(
                              color: ColorPalette.tertiary,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: ticket.showTime?.startTime?.hhmma ?? '',
                                style: const TextStyle(
                                  color: ColorPalette.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                },
                if (ticket.seats != null) ...{
                  RichText(
                    text: TextSpan(
                      text: 'Seats: ',
                      style: const TextStyle(
                        color: ColorPalette.tertiary,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: ticket.seats
                              ?.map((e) => '${e.row}${e.number}')
                              .join(","),
                          style: const TextStyle(
                            color: ColorPalette.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                },
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: BarcodeWidget(
              height: 20,
              data: 'https://khushal-rao.web.app',
              barcode: Barcode.code128(),
              drawText: false,
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    final ticketHeight = MediaQuery.of(context).size.height * 3 / 5;
    final ticketWidth = MediaQuery.of(context).size.width * 3 / 5;
    final backgroundTicketWidth = ticketWidth * 0.8;

    return SizedBox(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          if ((ticket.showTime?.movie?.thumbnails?.length ?? 0) > 3) ...{
            Transform.rotate(
              angle: -math.pi / 6,
              child: ClipPath(
                clipper: const SideCutClipper(
                  midPointWrtHeight: 3 / 5,
                  cornerRadius: 20,
                  sideCutRadius: 20,
                ),
                child: Card(
                  elevation: 4.0,
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: Colors.white,
                    width: backgroundTicketWidth,
                    child: ticketChild(
                      ticketHeight,
                      thumbnailIndex: 1,
                    ),
                  ),
                ),
              ),
            ),
            Transform.rotate(
              angle: math.pi / 6,
              child: ClipPath(
                clipper: const SideCutClipper(
                  midPointWrtHeight: 3 / 5,
                  cornerRadius: 20,
                  sideCutRadius: 20,
                ),
                child: Card(
                  elevation: 4.0,
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: Colors.white,
                    width: backgroundTicketWidth,
                    child: ticketChild(
                      ticketHeight,
                      thumbnailIndex: 2,
                    ),
                  ),
                ),
              ),
            ),
          },
          ClipPath(
            clipper: const SideCutClipper(
              midPointWrtHeight: 3 / 5,
              cornerRadius: 20,
              sideCutRadius: 20,
            ),
            child: Card(
              elevation: 12.0,
              shadowColor: Colors.grey[900],
              clipBehavior: Clip.antiAlias,
              child: Container(
                color: Colors.white,
                width: ticketWidth,
                child: ticketChild(
                  ticketHeight,
                  thumbnailIndex: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
