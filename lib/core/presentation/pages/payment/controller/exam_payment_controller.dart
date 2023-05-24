import 'package:get/get.dart';

class ExamPaymentController extends GetxController {
  bool isActiveKotakBankUpi = false;
  bool isActiveGooglePay = false;
  bool isActivePayPal = false;

  onTapKotakBankUpi() {
    isActiveKotakBankUpi = !isActiveKotakBankUpi;
    isActiveGooglePay = false;
    isActivePayPal = false;
    update();
  }

  onTapGooglePay() {
    isActiveKotakBankUpi = false;
    isActiveGooglePay = !isActiveGooglePay;
    isActivePayPal = false;
    update();
  }

  onTapPayPal() {
    isActiveKotakBankUpi = false;
    isActiveGooglePay = false;
    isActivePayPal = !isActivePayPal;
    update();
  }

  // selected RadioButton
  int selectedRadioBtn = 0;

  onChangeRadioUpiBtn(value) {
    selectedRadioBtn = value;
    update();
  }

  onChangeRadioCreditBtn(value) {
    selectedRadioBtn = value;
    update();
  }

  onChangeRadioATMBtn(value) {
    selectedRadioBtn = value;
    update();
  }

  onChangeDepositCenterOption(value) {
    selectedRadioBtn = value;
    update();
  }
}
