import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginUserApi {
  static const loginUserUrl =
      "https://backend-in-db-project.onrender.com/login";
  userLogin(
      {required BuildContext context,
      required TextEditingController emailcont,
      required TextEditingController passcont}) async {
    try {
      print('before');
      Map<String, dynamic> requestBody = {
        'email': emailcont.text,
        'password': passcont.text,
      };
      Response response = await Dio().post("$loginUserUrl", data: requestBody);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.data);
       GoRouter.of(context).push(AppRouter.kHomeView);
        print(response.data["AddedID"]);

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString("AddedID", response.data["AddedID"]);
        String? AddedId = prefs.getString("AddedID");
        print("Id is : $AddedId");
        print("after");
      }
    } catch (e) {
      if (e is DioException) {
        print(e.response?.data);
        _showErrorDialog(
            context, 'Email or password aren\'t correct', emailcont, passcont);
      }
    }
  }
}

void _showErrorDialog(
  BuildContext context,
  String message,
  TextEditingController emailcont,
  TextEditingController passCont,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              emailcont.clear();
              passCont.clear();
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Container(
              width: 120,
              height: 45,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'OK',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle20,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
