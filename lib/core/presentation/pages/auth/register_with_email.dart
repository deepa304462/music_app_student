import 'package:flutter/material.dart';
import 'package:music_app_student/core/presentation/pages/register_profile/register_profile_page.dart';
import 'package:music_app_student/core/utils/utils.dart';
import 'package:music_app_student/models/register_with_email_model.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../repository/auth_repository.dart';
import '../../../config/helpers/app_color.dart';
import '../../../config/helpers/app_test_style.dart';


class RegisterWithEmail extends StatefulWidget {
  const RegisterWithEmail({super.key});

  @override
  State<RegisterWithEmail> createState() => _RegisterWithEmailState();
}

class _RegisterWithEmailState extends State<RegisterWithEmail> {
  TextEditingController _registerEmailController = TextEditingController();
  TextEditingController _registerPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              4.h.heightBox,
                Text(
                  "Register your\nEmail",
                  style: TextStyle(
                    fontSize: 45.12,
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              8.h.heightBox,
              _textFieldEmail(controller: _registerEmailController),
              4.h.heightBox,
              _textFieldPassword(controller: _registerPasswordController),
              8.h.heightBox,
            _isLoading?CircularProgressIndicator():  Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  color: AppColor.blue224,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      onTapRegister();}
                  },
                  child: Text(
                    "Register",
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
        ),
      ),
    );
  }
  _textFieldEmail({TextEditingController? controller}) {
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
          Icon(
            Icons.email,
            color: AppColor.white255,
          ),
          Container(
            height: 20,
            width: 1,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: AppColor.white255,
          ),
          Expanded(
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                if (!isEmail(value)) {
                  return 'Please enter a valid email';
                }
                return null; // Return null if the input is valid.
              },
              style: TextStyle(color: AppColor.white255),
              controller: controller,
              keyboardType: TextInputType.emailAddress, // Use email address keyboard type
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                hintText: "Email",
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
  _textFieldPassword({TextEditingController? controller}) {
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
          Icon(
            Icons.password,
            color: AppColor.white255,
          ),
          Container(
            height: 20,
            width: 1,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: AppColor.white255,
          ),
          Expanded(
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null; // Return null if the input is valid.
              },
              style: TextStyle(color: AppColor.white255),
              controller: controller, // Use email address keyboard type
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                hintText: "Password",
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

  bool isEmail(String value) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(value);
  }

  onTapRegister() async {
    setState(() {
      _isLoading = true;
    });
    // Utils.showNonDismissibleLoadingDialog(
    //     context, 'Please wait...', 'Loading...');
    Map<String, String> data = {
      'email': _registerEmailController.text,
      'password':_registerPasswordController.text
    };
    print(data);
    final authRepository = AuthRepository();
    final response = await authRepository.registerEmailApi(data);
    //Navigator.pop(context);
    RegisterWithEmailModel registerWithEmailModel = RegisterWithEmailModel.fromJson(response);
    print("registerFormModel.id");
    print(registerWithEmailModel.user);
    print("registerFormModel.id");
    if(registerWithEmailModel.user != null){
      Utils.toastMassage("Email register successfully");
      setState(() {
        _isLoading = false;
      });
      Navigator.push(context, MaterialPageRoute(builder: (_)=>RegisterProfilePage()));
    }else{
      Utils.toastMassage(response['message']);
      setState(() {
        _isLoading = false;
      });
    }
  }
}
