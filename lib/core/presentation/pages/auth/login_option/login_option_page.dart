import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/presentation/pages/auth/login_option/controller/login_option_controller.dart';

class LoginOptionPage extends StatelessWidget {
  LoginOptionPage({super.key});
  final controller = Get.put(LoginOptionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "logo",
                  child: Container(
                    width: 270,
                    height: 163,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/main_logo.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/svg/google.svg"),
                SvgPicture.asset("assets/svg/instagram.svg"),
                SvgPicture.asset("assets/svg/twitter.svg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
