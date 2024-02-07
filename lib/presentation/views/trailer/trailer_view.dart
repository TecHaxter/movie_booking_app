import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

@RoutePage()
class TrailerView extends StatefulWidget {
  final String uri;
  const TrailerView({
    super.key,
    required this.uri,
  });

  @override
  State<TrailerView> createState() => _TrailerViewState();
}

class _TrailerViewState extends State<TrailerView> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: widget.uri,
      flags: const YoutubePlayerFlags(
        mute: false,
        hideControls: true,
      ),
    )..setVolume(100);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayerBuilder(
          player: YoutubePlayer(
            bufferIndicator: const CircularProgressIndicator(),
            controller: controller,
            showVideoProgressIndicator: true,
            onEnded: (metaData) {
              AppServices.router.pop();
            },
          ),
          builder: (context, player) {
            return Stack(
              children: [
                Positioned.fill(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: player,
                  ),
                ),
                Positioned(
                  right: 24,
                  top: 24,
                  child: IconButton(
                    onPressed: () {
                      AppServices.router.pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
