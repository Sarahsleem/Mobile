import 'package:bookly_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class CustomButon extends StatelessWidget {
  CustomButon({this.onTap, required this.text});
  VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: borderColor,
          borderRadius: BorderRadius.circular(17),
        ),
        width: double.infinity,
        height: 50,
        child: Center(
            child: Text(
          text,
          style: Styles.textStyle20
              .copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
