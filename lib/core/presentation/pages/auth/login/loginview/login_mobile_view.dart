import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/loginview/controller/login_view_controller.dart';
import 'package:music_app_student/core/presentation/pages/auth/otp/otp_verify_page.dart';
import 'package:music_app_student/core/utils/utils.dart';
import 'package:music_app_student/models/login_model.dart';
import 'package:music_app_student/repository/auth_repository.dart';

import '../../../../../utils/constants/constants.dart';

class LoginMobileView extends StatefulWidget {
  LoginMobileView({super.key});

  @override
  State<LoginMobileView> createState() => _LoginMobileViewState();
}

class _LoginMobileViewState extends State<LoginMobileView> {
  final controller = Get.put(LoginViewController());
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          _textField(
            controller: controller.phoneNumberController,
          ),

          SizedBox(
            height: 30,
          ),

         _isLoading?Center(child: CircularProgressIndicator(),): Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              height: 50,
              minWidth: double.infinity,
              color: AppColor.blue224,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              onPressed: () {
                onTapSignUp();
                // Get.to(OtpVerifyPage(isFromLogin: true,));
              },
              child: Text(
                "Log in",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 24,
                  color: AppColor.white255,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }

  Container _textField({TextEditingController? controller}) {
    return Container(
      height: 52.19,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(
          color: AppColor.white255,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.call,
                color: AppColor.white255,
              ),
              Container(
                height: 20,
                width: 1,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                color: AppColor.white255,
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(color: AppColor.white255),
                  controller: controller,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                      color: AppColor.white255,
                      fontFamily: AppTextStyle.textStyleRobote,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }

  onTapSignUp() async {
    setState(() {
      _isLoading = true;
    });
    // Utils.showNonDismissibleLoadingDialog(
    //     context, 'Please wait...', 'Loading...');
    Map<String, String> data = {
      'mobileNumber': controller.phoneNumberController.text,
    };
    print(data);
    final authRepository = AuthRepository();
    final response = await authRepository.logInApi(data);
    //Navigator.pop(context);
    LoginModel loginModel = LoginModel.fromJson(response);
    if (loginModel.message == "OTP generated and sent to the user") {
      setState(() {
        _isLoading = false;
      });
      await Utils.saveToSharedPreference(
          Constants.userId, loginModel.user!.id);
      debugPrint(loginModel.user!.id);
      debugPrint(loginModel.user!.otp);
      Utils.toastMassage(loginModel.user!.otp.toString());
      debugPrint(loginModel.user!.otp.toString());
      setState(() {
        _isLoading = false;
      });
      Navigator.push(context, MaterialPageRoute(builder: (_)=>OtpVerifyPage(otp:loginModel.user!.otp,phone: loginModel.user!.mobileNumber,isFromLogin: true,)));
      //Get.to(OtpVerifyPage(otp:loginModel.user!.otp,phone: loginModel.user!.mobileNumber ,isFromLogin: false,));

    } else {
      Utils.toastMassage(response['error']);
      setState(() {
        _isLoading = false;
      });
    }
  }
}
