import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../widgets/gradient_button.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    Key? key,
    required this.gradientColorsButton,
    required this.textButton,
    required this.bgButton,
    this.bottomPaddingButton,
    this.scaleFactorVideo,
  }) : super(key: key);
  final List<Color> gradientColorsButton;
  final double? bottomPaddingButton;
  final double? scaleFactorVideo;
  final Text textButton;
  final Color bgButton;
  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final videoPlayerController =
      VideoPlayerController.asset('assets/onboarding_video.mp4')
        ..setLooping(true)
        ..initialize();

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Transform.scale(
            scaleX: widget.scaleFactorVideo,
            child: VideoPlayer(videoPlayerController..play())),
        FutureBuilder(
          future: Future.delayed(const Duration(seconds: 5), (() => true)),
          builder: (context, AsyncSnapshot<bool> value) => value.hasData
              ? Positioned(
                  bottom: widget.bottomPaddingButton,
                  child: GradientButton(
                    onPressed: (() => Navigator.of(context).pop()),
                    background: widget.bgButton,
                    beginGradient:
                        LinearGradient(colors: widget.gradientColorsButton),
                    endGradient: LinearGradient(
                        colors: widget.gradientColorsButton.reversed.toList()),
                    borderRadius: 34,
                    stroukeWidth: 3,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 41),
                        child: widget.textButton),
                  ),
                )
              : const SizedBox(),
        )
      ],
    ));
  }
}
