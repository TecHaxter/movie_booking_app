import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';
import 'package:movie_booking_app/presentation/widgets/side_cut_clipper.dart';
import 'dart:math' as math;

class TicketShape extends StatelessWidget {
  // final TicketEntity ticket;
  const TicketShape({
    super.key,
    // required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    final ticketHeight = MediaQuery.of(context).size.height / 2;
    final backgroundTicketsHeight = ticketHeight * 0.9;

    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      // color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: -math.pi / 12,
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
                  width: width / 2,
                  height: backgroundTicketsHeight,
                  child: Column(
                    children: [
                      Image.network(
                        'https://res.cloudinary.com/dbxjcu3tp/image/upload/v1706106562/Quantumcon3%20Styles/Attack%20on%20Titans/Dark-Attackontitans-G-1.jpg',
                        fit: BoxFit.cover,
                        height: backgroundTicketsHeight * 3 / 5,
                        width: double.maxFinite,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Transform.rotate(
            angle: math.pi / 12,
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
                  width: width / 2,
                  height: backgroundTicketsHeight,
                  child: Column(
                    children: [
                      Image.network(
                        'https://res.cloudinary.com/dbxjcu3tp/image/upload/v1706106562/Quantumcon3%20Styles/Attack%20on%20Titans/Dark-Attackontitans-G-1.jpg',
                        fit: BoxFit.cover,
                        height: backgroundTicketsHeight * 3 / 5,
                        width: double.maxFinite,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
                width: width / 2,
                height: ticketHeight,
                child: Column(
                  children: [
                    Image.network(
                      'https://res.cloudinary.com/dbxjcu3tp/image/upload/v1706106562/Quantumcon3%20Styles/Attack%20on%20Titans/Dark-Attackontitans-G-1.jpg',
                      fit: BoxFit.cover,
                      height: ticketHeight * 3 / 5,
                      width: double.maxFinite,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Container(
                        child: StaggeredGrid.count(
                          crossAxisCount: 4,
                          children: [
                            StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 0.5,
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Date: ',
                                  style: TextStyle(
                                    color: ColorPalette.tertiary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'May 8',
                                      style: TextStyle(
                                        color: ColorPalette.primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 0.5,
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Time: ',
                                  style: TextStyle(
                                    color: ColorPalette.tertiary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '2 PM',
                                      style: TextStyle(
                                        color: ColorPalette.primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            StaggeredGridTile.count(
                              crossAxisCellCount: 4,
                              mainAxisCellCount: 0.5,
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Seats: ',
                                  style: TextStyle(
                                    color: ColorPalette.tertiary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'C3, C4, C5',
                                      style: TextStyle(
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
                      ),
                    ),
                    Expanded(
                      child: Container(
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
