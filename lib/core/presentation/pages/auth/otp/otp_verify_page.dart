import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/nav/new_bottom_navigation_bar.dart';
import 'package:music_app_student/core/presentation/pages/auth/register_with_email.dart';
import 'package:music_app_student/core/presentation/pages/home/home_page.dart';
import 'package:music_app_student/core/presentation/pages/register_profile/register_profile_page.dart';
import 'package:music_app_student/models/register_otp_model.dart';
import 'package:music_app_student/models/resend_otp_model.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../repository/auth_repository.dart';
import '../../../../utils/utils.dart';
import '../../../../utils/constants/constants.dart';
import 'controller/otp_verify_controller.dart';

class OtpVerifyPage extends StatefulWidget {
  String? phone;
  String? otp;
  bool isFromLogin;

  OtpVerifyPage({this.otp, this.phone,required this.isFromLogin, super.key});

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
  final controller = Get.put(OtpVerifyController());
  bool _isLoading = false;
  String otpId = '';


  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpVerifyController>(
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(right: 16, left: 16, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColor.white255,
                  ),
                ),
                2.h.heightBox,
                Text(
                  "Verify your\nnumber".trim(),
                  style: TextStyle(
                    fontSize: 45.12,
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                8.h.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Enter 4 - digit verification code sent to your\n",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleRobote,
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: "phone number ",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleRobote,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: widget.phone,
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleRobote,
                            fontSize: 14,
                            color: AppColor.blue224,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: "  Edit",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleRobote,
                            fontSize: 14,
                            color: AppColor.white255,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                4.h.heightBox,
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 30,
                  ),
                  child: PinCodeTextField(
                    enableActiveFill: true,
                    appContext: context,
                    controller: controller.otpController,
                    length: 6,
                    onChanged: (value) {},
                    keyboardType: TextInputType.number,
                    cursorHeight: 18,
                    cursorWidth: 1,
                    cursorColor: AppColor.blue224,
                    textStyle: TextStyle(color: AppColor.white255),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 45,
                      fieldWidth: 45,
                      borderWidth: 1,
                      selectedColor: AppColor.white205,
                      selectedFillColor: Colors.transparent,
                      activeColor: AppColor.white205,
                      activeFillColor: Colors.transparent,
                      inactiveColor: AppColor.white255,
                      inactiveFillColor: Colors.transparent,
                    ),
                  ),
                ),
                2.h.heightBox,
                _isLoading ?Center(child: CircularProgressIndicator(),):MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  color: AppColor.blue224,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    onTapVerify(context);
                  },
                  child: Text(
                    "Verify",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 24,
                      color: AppColor.white255,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                2.h.heightBox,
                Align(
                  child: Text(
                    "Trouble receiving code ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 14,
                      color: AppColor.white255,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                2.h.heightBox,
                Align(
                  child: InkWell(
                    onTap: (){
                      onTapResendOtp();
                    },
                    child: Text(
                      "RESEND OTP".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        color: AppColor.brown29,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                6.h.heightBox,
                Center(
                  child: Image.asset(
                    "assets/images/cyan.png",
                    width: 186,
                    height: 100,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapVerify(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });
    final authRepository = AuthRepository();
    final response = await authRepository.signUpOtpApi(widget.otp);

    if (response != null) {
      RegisterOtpModel registerOtpModel = RegisterOtpModel.fromJson(response);

      if (registerOtpModel.message != null) {
        setState(() {
          _isLoading = false;
        });
        await Utils.saveToSharedPreference(
            Constants.accessToken, registerOtpModel.token);
        await Utils.saveToSharedPreference(Constants.isLoggedIn, true);
        debugPrint(registerOtpModel.message);
        debugPrint(registerOtpModel.token);
        Utils.toastMassage(widget.otp.toString());

        if (widget.isFromLogin) {
          Utils.pushToNewRoute(context, HomePage());
        } else {
          setState(() {
            _isLoading= false;
          });
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegisterWithEmail()));
        }
        //Get.to(NewBottomNavigationBar());
      } else {
        setState(() {
          _isLoading = false;
        });
        Utils.toastMassage(response["error"]);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      Utils.toastMassage("Response is null"); // Handle the case when the response is null
    }
  }

  onTapResendOtp() async {
    setState(() {
      _isLoading = true;
    });
    // Utils.showNonDismissibleLoadingDialog(
    //     context, 'Please wait...', 'Loading...');
    Map<String, String> data = {
      'mobileNumber':widget.phone.toString(),
    };
    print(data);
    final authRepository = AuthRepository();
    final response = await authRepository.resendOtpApi(data);
    //Navigator.pop(context);
    ResendOtpModel resendOtpModel = ResendOtpModel.fromJson(response);
    print("registerFormModel.id");
    print(resendOtpModel.user);
    print("registerFormModel.id");
    if(resendOtpModel.user != null){
      Utils.toastMassage(resendOtpModel.user!.otp.toString());
      setState(() {
        _isLoading = false;
      });
    }else{
      Utils.toastMassage(response['error']);
      setState(() {
        _isLoading = false;
      });
    }
  }

}
