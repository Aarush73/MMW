import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:video_player/video_player.dart';

class VideoExample extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoExample> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
    createVideo();
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.asset(
          "assets/videos/mmw_intro.mp4")
        //'https://drive.google.com/file/d/15bi54Gw2ykedadgy9GItIpIZZPZCjEi-/view?usp=sharing')
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    }
  }

  @override
  void deactivate() {
    if (playerController == null) return;
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Center(
              child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    child: (playerController != null
                        ? VideoPlayer(
                            playerController,
                          )
                        : Container(
                            child: Text(
                              'Video here',
                              textAlign: TextAlign.center,
                            ),
                          )),
                  ))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(playerController.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow),
                onPressed: () {
                  if (playerController.value.isPlaying) {
                    playerController.pause();
                  } else {
                    playerController.play();
                  }
                }),
            IconButton(
                icon: Icon(Icons.restore),
                onPressed: () {
                  playerController.initialize();
                  playerController.play();
                }),
          ],
        )
      ],
    );
  }
}
