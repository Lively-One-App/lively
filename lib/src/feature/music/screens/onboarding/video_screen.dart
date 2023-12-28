import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
import 'package:native_video_player/native_video_player.dart';
import 'package:lively/src/widgets/gradient_button.dart';
// import '../../../../widgets/gradient_button.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    Key? key,
    required this.gradientColorsButton,
    this.textButton,
    required this.bgButton,
    this.bottomPaddingButton,
    this.scaleFactorVideo,
  }) : super(key: key);
  final List<Color> gradientColorsButton;
  final double? bottomPaddingButton;
  final double? scaleFactorVideo;
  final Widget? textButton;
  final Color bgButton;

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late NativeVideoPlayerController controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        ClipRect(
          child: Align(
            child: Transform.scale(
                scaleX: widget.scaleFactorVideo,
                child: NativeVideoPlayerView(onViewReady: (controller) async {
                  final videoSource = await VideoSource.init(
                      path: 'assets/onboarding_video.mp4',
                      type: VideoSourceType.asset);
                  await controller.loadVideoSource(videoSource);
                  controller.onPlaybackReady.addListener(() {
                    controller.play();
                  });
                  controller.onPlaybackEnded.addListener(() {
                    controller.play();
                  });
                })),
          ),
        ),
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
                    strokeWidth: 3,
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


// class _VideoScreenState extends State<VideoScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: FilledButton(
//           onPressed: (() => Navigator.of(context).pop()),
//           child: const Icon(Icons.navigate_next_rounded)),
//     );
//   }


