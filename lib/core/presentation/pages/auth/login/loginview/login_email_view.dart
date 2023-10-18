import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/loginview/controller/login_view_controller.dart';
import 'package:music_app_student/core/presentation/pages/home/home_page.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../../models/login_with_email_model.dart';
import '../../../../../../repository/auth_repository.dart';
import '../../../../../utils/utils.dart';

class LoginEmailView extends StatefulWidget {
  LoginEmailView({super.key});

  @override
  State<LoginEmailView> createState() => _LoginEmailViewState();
}

class _LoginEmailViewState extends State<LoginEmailView> {
  final controller = Get.put(LoginViewController());
bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginViewController());
    return SizedBox(
      child: Column(
        children: [
          _textField(
            controller: controller.emailController,
            hintText: "Email Id",
            icon: Icon(
              Icons.email,
              color: AppColor.white255,
            ),
          ),
          4.h.heightBox,
          _textField(
            controller: controller.passwordController,
            hintText: "Password",
            icon: Icon(
              Icons.lock,
              color: AppColor.white255,
            ),
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
                onTapLogIn();
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

  Container _textField(
      {TextEditingController? controller, String? hintText, Widget? icon}) {
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
      child: Row(
        children: [
          SizedBox(
            child: icon,
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
                hintText: "$hintText",
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
    );
  }

  onTapLogIn() async {
    setState(() {
      _isLoading = true;
    });
    // Utils.showNonDismissibleLoadingDialog(
    //     context, 'Please wait...', 'Loading...');
    Map<String, String> data = {
      'email': controller.emailController.text,
      'password':controller.passwordController.text
    };
    print(data);
    final authRepository = AuthRepository();
    final response = await authRepository.logInWithEmailApi(data);
    //Navigator.pop(context);
    LoginWithEmailModel loginWithEmailModel = LoginWithEmailModel.fromJson(response);
    print("registerFormModel.id");
    print(loginWithEmailModel.user);
    print("registerFormModel.id");
    if(loginWithEmailModel.user != null){
      Utils.toastMassage("Email login successfully");
      setState(() {
        _isLoading = false;
      });
      Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
    }else{
      Utils.toastMassage(response['message']);
      setState(() {
        _isLoading = false;
      });
    }
  }
}
