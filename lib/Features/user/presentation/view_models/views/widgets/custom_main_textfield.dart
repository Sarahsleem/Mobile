import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hintText,
    this.icon,
    this.cont,
  });
  String? hintText;
  final IconData? icon;
  TextEditingController? cont;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: cont,
        validator: (value) {
          if (value!.isEmpty) {
            return " must not be empty";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: hintText,
            labelText: hintText,
            hintStyle: Styles.textStyle16.copyWith(color: borderColor),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: borderColor,
                ),
                borderRadius: BorderRadius.circular(17)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: borderColor)),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
            suffixIconColor: borderColor,
            labelStyle: const TextStyle(color: borderColor),
            prefixIcon: Icon(icon),
            prefixIconColor: borderColor));
  }
}
