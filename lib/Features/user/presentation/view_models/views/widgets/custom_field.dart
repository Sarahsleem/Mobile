import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class CustomField extends StatefulWidget {
  CustomField({super.key, this.cont, this.hintText});
  TextEditingController? cont;
  String? hintText;

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.cont,
      validator: (value) {
        if (value!.isEmpty) {
          return "Password must not be empty";
        }
        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      obscureText: showPass,
      decoration: InputDecoration(
        hintText: '${widget.hintText}',
        labelText: '${widget.hintText}',
        labelStyle: const TextStyle(color: borderColor),
        hintStyle: Styles.textStyle16.copyWith(color: borderColor),
        prefixIcon: const Icon(Icons.key),
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
        prefixIconColor: borderColor,
        suffixIconColor: borderColor,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              showPass = !showPass;
            });
          },
          icon: Icon(showPass ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
