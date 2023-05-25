import 'dart:developer';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ImpVideosLessonController extends GetxController {
  late VideoPlayerController controller;

  @override
  void onInit() {
    super.onInit();
    playVideos();
  }

  playVideos() {
    try {
      controller = VideoPlayerController.network(
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4')
        ..initialize().then((_) {
          // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
          update();
        });
    } catch (e) {
      log(e.toString());
    }
  }

  onPlayButton() {
    controller.value.isPlaying ? controller.pause() : controller.play();
    update();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    controller.dispose();
  }
}
