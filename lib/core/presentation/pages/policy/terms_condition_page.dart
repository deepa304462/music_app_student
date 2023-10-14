import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/policy/controller/terms_condition_controller.dart';
import 'package:music_app_student/repository/auth_repository.dart';

import '../../../../models/get_terms_and_conditions_model.dart';

class TermsConditionPage extends StatefulWidget {
  TermsConditionPage({super.key});

  @override
  State<TermsConditionPage> createState() => _TermsConditionPageState();
}

class _TermsConditionPageState extends State<TermsConditionPage> {
  final controller = Get.put(TermsConditionController());
  GetTermsAndConditionsModel? getTermsAndConditionsModel;
  List<Terms>? getAllTermsList = [];
 bool _isLoading = false;

  @override
  void initState() {
    getTermsAndConditions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TermsConditionController>(
      builder: (ctx) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppColor.white255,
              ),
              onPressed: () {},
            ),
            centerTitle: true,
            title: Text(
              "Terms & Conditions....",
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleMulish,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
                color: AppColor.blue224,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Expanded(
               child: ListView.builder(
                 itemCount: getAllTermsList!.length,
                   itemBuilder: (context, index){
                   return ListTile(
                     title: Text(
                       getAllTermsList![index].terms.toString(),
                       style: TextStyle(
                         fontFamily: "Inter",
                         color: Colors.white
                       ),
                     ),
                   );
               }),
             ),
              _isLoading?CircularProgressIndicator():     Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: MaterialButton(
                  color: AppColor.blue224,
                  minWidth: 330,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(85),
                  ),
                  onPressed: () {
                    Navigator.pop(context,);
                  },
                  child: Text(
                    "Accept",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStylePoppins,
                      fontSize: 20,
                      color: AppColor.white255,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void getTermsAndConditions() async {
    final authRepository = AuthRepository();
    final response = await authRepository.getTermsApi();
    debugPrint(response.toString());
    getTermsAndConditionsModel = GetTermsAndConditionsModel.fromJson(response);
    print("response");
    print(response);
    print("response");
    setState(() {
      getAllTermsList = getTermsAndConditionsModel!.terms;
      print(getAllTermsList!.length);

      getTermsAndConditionsModel = GetTermsAndConditionsModel.fromJson(response);
    });
  }
}
