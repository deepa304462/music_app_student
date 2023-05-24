import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/payment/controller/exam_payment_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ExamPaymentPage extends StatelessWidget {
  ExamPaymentPage({super.key});
  final controller = Get.put(ExamPaymentController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExamPaymentController>(builder: (context) {
      return Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              2.h.heightBox,
              _headerCard(),
              2.h.heightBox,
              couponViewLine(),
              1.h.heightBox,
              Divider(thickness: 3, color: AppColor.white255),
              1.h.heightBox,
              _paymentOption(),
              1.h.heightBox,
              Divider(thickness: 3, color: AppColor.white255),
              otherPaymentOption(),
              1.h.heightBox,
              Divider(thickness: 3, color: AppColor.white255),
              1.h.heightBox,
              RadioListTile(
                fillColor: MaterialStatePropertyAll(AppColor.white255),
                groupValue: controller.selectedRadioBtn,
                value: 4,
                onChanged: controller.onChangeDepositCenterOption,
                title: Text(
                  "Deposit at the Center",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleNunito,
                    fontSize: 16.64,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white255,
                  ),
                ),
                secondary: Image.asset(
                  "assets/images/deposit.png",
                  height: 30,
                  width: 30,
                ),
              ),
              2.h.heightBox,
              Align(
                child: Text(
                  "100% Safe and Secure Transactions",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleNunito,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: AppColor.yellow29,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: MaterialButton(
                  color: AppColor.blue224,
                  height: 50,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(84),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Pay",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleInter,
                      fontSize: 20,
                      color: AppColor.white255,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              6.h.heightBox,
            ],
          ),
        ),
      );
    });
  }

  Container otherPaymentOption() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "All other option",
            style: TextStyle(
              fontFamily: AppTextStyle.textStyleNunito,
              fontSize: 16.64,
              fontWeight: FontWeight.w400,
              color: AppColor.white255,
            ),
          ),
          RadioListTile(
            fillColor: MaterialStatePropertyAll(AppColor.white255),
            activeColor: AppColor.blue224,
            selectedTileColor: AppColor.blue224,
            groupValue: controller.selectedRadioBtn,
            value: 1,
            onChanged: controller.onChangeRadioUpiBtn,
            title: Text(
              "UPI",
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleNunito,
                fontSize: 16.64,
                fontWeight: FontWeight.w400,
                color: AppColor.white255,
              ),
            ),
            secondary: Image.asset(
              "assets/images/bhim_upi.png",
              height: 30,
              width: 30,
            ),
          ),
          RadioListTile(
            fillColor: MaterialStatePropertyAll(AppColor.white255),
            groupValue: controller.selectedRadioBtn,
            value: 2,
            onChanged: controller.onChangeRadioCreditBtn,
            title: Text(
              "Credits",
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleNunito,
                fontSize: 16.64,
                fontWeight: FontWeight.w400,
                color: AppColor.white255,
              ),
            ),
            secondary: SvgPicture.asset("assets/svg/credit.svg"),
          ),
          RadioListTile(
            fillColor: MaterialStatePropertyAll(AppColor.white255),
            groupValue: controller.selectedRadioBtn,
            value: 3,
            onChanged: controller.onChangeRadioATMBtn,
            title: Text(
              "Credit/ Debit/ ATM Card",
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleNunito,
                fontSize: 16.64,
                fontWeight: FontWeight.w400,
                color: AppColor.white255,
              ),
            ),
            secondary: Image.asset(
              "assets/images/credit.png",
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }

  Container _paymentOption() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suggested for you",
            style: TextStyle(
              fontFamily: AppTextStyle.textStyleNunito,
              fontSize: 16,
              color: AppColor.white255,
              fontWeight: FontWeight.w400,
            ),
          ),
          listTileView(
            isActive: controller.isActiveKotakBankUpi,
            title: "Kotak Mahindra Bank UPI",
            subTitle: "Account No.  xxxx xxxx 6746",
            trailing: Image.asset(
              "assets/images/upi.png",
              height: 40,
              width: 40,
            ),
            onTap: controller.onTapKotakBankUpi,
          ),
          listTileView(
            isActive: controller.isActiveGooglePay,
            title: "Google Pay UPI",
            subTitle: "tejasaher67@gmail.com",
            trailing: SvgPicture.asset(
              "assets/svg/google_pay.svg",
              height: 40,
              width: 40,
            ),
            onTap: controller.onTapGooglePay,
          ),
          listTileView(
            isActive: controller.isActivePayPal,
            title: "Pay pal",
            subTitle: "tejasaher67@gmail.com",
            trailing: SvgPicture.asset(
              "assets/svg/paypal.svg",
              height: 40,
              width: 40,
            ),
            onTap: controller.onTapPayPal,
          ),
        ],
      ),
    );
  }

  ListTile listTileView({
    String? title,
    String? subTitle,
    Widget? trailing,
    bool isActive = false,
    void Function()? onTap,
  }) {
    return ListTile(
        onTap: onTap,
        leading: _circleBtn(
          isActive: isActive,
        ),
        title: Text(
          "$title",
          style: TextStyle(
            fontFamily: AppTextStyle.textStyleNunito,
            fontSize: 14.56,
            fontWeight: FontWeight.w400,
            color: AppColor.white255,
          ),
        ),
        subtitle: Text(
          "$subTitle",
          style: TextStyle(
            fontFamily: AppTextStyle.textStyleNunito,
            fontSize: 14.56,
            fontWeight: FontWeight.w400,
            color: AppColor.white255,
          ),
        ),
        trailing: trailing);
  }

  Container _circleBtn({bool isActive = false}) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.5,
          color: isActive ? AppColor.blue224 : AppColor.white255,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? AppColor.blue224 : AppColor.white255,
        ),
      ),
    );
  }

  Container couponViewLine() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Discount Coupon",
            style: TextStyle(
                fontFamily: AppTextStyle.textStylePoppins,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColor.white255),
          ),
          2.w.widthBox,
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 32,
                width: 132,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.96),
                  color: AppColor.white255,
                  border: Border.all(
                    color: AppColor.yellow29,
                  ),
                ),
                child: Text(
                  "HEAPDO22",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStylePoppins,
                    fontSize: 12.74,
                    color: AppColor.yellow29,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          2.w.widthBox,
          Expanded(
            child: MaterialButton(
              height: 26,
              color: AppColor.yellow29,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.73)),
              onPressed: () {},
              child: Text(
                "Verify",
                style: TextStyle(
                  color: AppColor.white255,
                  fontFamily: AppTextStyle.textStylePoppins,
                  fontSize: 10.76,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: AppColor.white255,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        "Payment....",
        style: TextStyle(
          fontFamily: AppTextStyle.textStyleMulish,
          fontSize: 20,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.italic,
          color: AppColor.blue224,
        ),
      ),
    );
  }

  Container _headerCard() {
    return Container(
      height: 157,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColor.white255,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exam Fee",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 12,
                      color: AppColor.white255,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.currency_rupee,
                        color: AppColor.blue224,
                        size: 14,
                      ),
                      Text(
                        "1900",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColor.blue224,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              2.h.heightBox,
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Registration fee",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 12,
                      color: AppColor.white255,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "+₹ 900",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blue224,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 18,
                  color: AppColor.blue224,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.currency_rupee,
                    color: AppColor.blue224,
                    size: 18,
                  ),
                  Text(
                    "7000",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: AppColor.blue224,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
