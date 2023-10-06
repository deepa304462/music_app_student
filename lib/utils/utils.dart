import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMassage(String massage) {
    Fluttertoast.showToast(
      msg: massage,
    );
  }

  static void flushBarErrorMassage(String massage, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(15),
          message: massage,
          backgroundColor: Colors.red,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: Icon(
            Icons.error,
            size: 20,
            color: Colors.white,
          ),
          duration: Duration(seconds: 3),
          flushbarPosition: FlushbarPosition.TOP,
        )..show(context));
  }

  static snackBar(String massage, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(massage),
    ));
  }

  static void showNonDismissibleLoadingDialog(
      BuildContext context, String title, String contentMessage) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissal on side click
      builder: (BuildContext context) {
        return WillPopScope(
          // Prevent dialog dismissal on back press
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircularProgressIndicator(),
                SizedBox(height: 16.0),
                Text(contentMessage),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<void> saveToSharedPreference(String key, dynamic value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (value is String) {
      preferences.setString(key, value);
    } else if (value is bool) {
      preferences.setBool(key, value);
    } else if (value is double) {
      preferences.setDouble(key, value);
    } else if (value is int) {
      preferences.setInt(key, value);
    } else if (value is List<String>) {
      preferences.setStringList(key, value);
    }
  }

  // static Future<dynamic> getFromSharedPreference(String key) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return preferences.get(key);
  // }

  // static Future<void> logOut(BuildContext context) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   List<String> keys = preferences.getKeys().toList();
  //
  //   for (String key in keys) {
  //     await preferences.remove(key);
  //   }
  //   if (context.mounted) {
  //     pushToNewRouteAndClearAll(context, SignUpScreen());
  //   }
  // }

  static void pushToNewRoute(BuildContext context, Widget routeName) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => routeName));
  }

  static void pushToNewRouteAndClearAll(
      BuildContext context, Widget routeName) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_) => routeName), (route) => false);
  }
}
