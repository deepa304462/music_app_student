import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CommunityController extends GetxController {
  TextEditingController typeCommentController = TextEditingController();
  bool selectedIndex = false;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  List communityListData = [
    {
      'title': 'Loren ipsum Loren loren loren loren loren',
      'image': "",
      'audio': ""
    },
    {
      'title': 'Loren ipsum Loren loren loren loren loren',
      'image': "assets/image/post.png",
      'audio': ""
    },
    {
      'title': 'Loren ipsum Loren loren loren loren loren',
      'image': "",
      'audio': "mp3"
    },
    {
      'title': 'Loren ipsum Loren loren loren loren loren',
      'image': "",
      'audio': ""
    },
    {
      'title': 'Loren ipsum Loren loren loren loren loren',
      'image': "assets/image/post.png",
      'audio': ""
    },
    {
      'title': 'Loren ipsum Loren loren loren loren loren',
      'image': "",
      'audio': "mp3"
    },
  ];
}
