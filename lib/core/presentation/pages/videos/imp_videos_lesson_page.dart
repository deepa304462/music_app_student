// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/nav/new_bottom_navigation_bar.dart';
import 'package:music_app_student/core/presentation/widgets/custom_appbar.dart';
import 'package:music_app_student/models/get_videos_lessons_model.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_video_progress/smooth_video_progress.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

import '../../../../repository/auth_repository.dart';
import 'controller/imp_videos_lesson_controller.dart';

class ImpVideosLessonPage extends StatefulWidget {
  ImpVideosLessonPage( {super.key});

  @override
  State<ImpVideosLessonPage> createState() => _ImpVideosLessonPageState();
}

class _ImpVideosLessonPageState extends State<ImpVideosLessonPage> {
  final controller = Get.put(ImpVideosLessonController());
  GetVideosLessonsModel getVideosLessonsModel = GetVideosLessonsModel();
  List<Studies>? mediaList;
  List<Studies> videosList = [];
  List<Studies> imagesList = [];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImpVideosLessonController>(builder: (context) {
      return Scaffold(
        appBar: CustomAppBar(
          centerTitle: true,
          title: "Video Lessons",
          onBackPressed: () {
            Get.to(NewBottomNavigationBar());
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _videoView(),
              _rowViewText(),
              _currentView(),
              _pastVideosLesson()
            ],
          ),
        ),
      );
    });
  }

  Container _pastVideosLesson() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          1.h.heightBox,
          Text(
            "Past Video Lessons",
            style: TextStyle(
              fontFamily: AppTextStyle.textStylePoppins,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.28,
              color: AppColor.white255,
            ),
          ),
          2.h.heightBox,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              height: 72,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: AppColor.blue224,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: Container(
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.yellow29,
                  ),
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStylePoppins,
                      fontSize: 20,
                      color: AppColor.white255,
                    ),
                  ),
                ),
                title: Text(
                  "Music Theory 2",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStylePoppins,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.28,
                    color: AppColor.white255,
                  ),
                ),
                trailing: Icon(
                  Icons.play_circle,
                  color: AppColor.white255,
                ),
              ),
            ),
          ),
          5.h.heightBox,
        ],
      ),
    );
  }

  Container _currentView() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Current Class Lesson Name",
              style: TextStyle(
                fontFamily: AppTextStyle.textStylePoppins,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.28,
                color: AppColor.yellow29,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "Uploaded on : DD/MM/YYYY",
              style: TextStyle(
                fontFamily: AppTextStyle.textStylePoppins,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
                color: AppColor.white255,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "Mentor Name: Loren Ipsum",
              style: TextStyle(
                fontFamily: AppTextStyle.textStylePoppins,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
                color: AppColor.white255.withOpacity(0.7),
              ),
            ),
          ),
          1.h.heightBox,
          Container(
            height: 130,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColor.white255,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Important Notes",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 20,
                          color: AppColor.yellow29,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 10,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SvgPicture.asset("assets/svg/cloud.svg"),
                )
              ],
            ),
          ),
          1.h.heightBox,
          Divider(
            thickness: 2,
            color: AppColor.grey217,
          )
        ],
      ),
    );
  }

  Container _rowViewText() {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "1:04",
              style: TextStyle(
                fontFamily: AppTextStyle.textStylePoppins,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
              ),
              children: const [
                TextSpan(text: "\t/\t"),
                TextSpan(text: "5:30"),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: AppColor.white255,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svg/cc.svg")),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.fullscreen,
                  color: AppColor.white255,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _videoView() {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          controller.controller.value.isInitialized
              ? VideoPlayer(controller.controller)
              : const Center(child: CircularProgressIndicator()),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: controller.onPlayButton,
              child: Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.white255.withOpacity(0.2),
                ),
                child: Icon(
                  controller.controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow_outlined,
                  color: AppColor.white255,
                  size: 40,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 1,
              width: double.infinity,
              child: SmoothVideoProgress(
                controller: controller.controller,
                builder: (context, position, duration, _) =>
                    VideoProgressSlider(
                  position: position,
                  duration: duration,
                  controller: controller.controller,
                  swatch: AppColor.orange2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void getVideosLessons() async {
    final authRepository = AuthRepository();
    final response = await authRepository.getVideosLessonsApi();
    debugPrint(response.toString());
    getVideosLessonsModel = GetVideosLessonsModel.fromJson(response);
    setState(() {
      mediaList = getVideosLessonsModel.studies!;
      mediaList?.forEach((element) {
        if (element.image != null) {
          imagesList.add(element);
        } else if (element.video != null) {
          videosList.add(element);
        }
      });

      print('videoLength: ${videosList.length}');
      print('imageLength: ${imagesList.length}');
    });
  }
}

class VideoProgressSlider extends StatelessWidget {
  const VideoProgressSlider({
    super.key,
    required this.position,
    required this.duration,
    required this.controller,
    required this.swatch,
  });

  final Duration position;
  final Duration duration;
  final VideoPlayerController controller;
  final Color swatch;

  @override
  Widget build(BuildContext context) {
    final max = duration.inMilliseconds.toDouble();
    final value = position.inMilliseconds.clamp(0, max).toDouble();
    return Theme(
      data: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: swatch),
        useMaterial3: true,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Slider(
          min: 0,
          max: max,
          activeColor: AppColor.orange2,
          value: value,
          onChanged: (value) =>
              controller.seekTo(Duration(milliseconds: value.toInt())),
          onChangeStart: (_) => controller.pause(),
          onChangeEnd: (_) => controller.play(),
        ),
      ),
    );
  }

}
