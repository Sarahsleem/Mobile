import 'package:bookly_application/Features/user/presentation/repos/regestrationApi.dart';
import 'package:bookly_application/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_router.dart';
import 'custom_field.dart';
import 'custom_main_botton.dart';
import 'custom_main_textfield.dart';

class Registeration extends StatefulWidget {
  Registeration({super.key});

  @override
  State<Registeration> createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  TextEditingController userName = TextEditingController();

  TextEditingController emailCont = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController passCont = TextEditingController();

  TextEditingController passConfirm = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool showPass = true;
  bool? isChecked = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextField(
              icon: Icons.person,
              hintText: 'User Name',
              cont: userName,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              icon: Icons.mail,
              hintText: 'Email',
              cont: emailCont,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomField(
              hintText: 'Password',
              cont: passCont,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passConfirm,
              validator: (value) {
                if (value!.isEmpty) {
                  return "must not be empty";
                } else if (value.length < 6) {
                  return "Password can't be less than 6 letters";
                } else if (passCont.text != passConfirm.text) {
                  return 'Passwords aren\'t identical';
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
              obscureText: showPass,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                labelText: 'Confirm Password',
                labelStyle: const TextStyle(color: borderColor),
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
<<<<<<< HEAD
                prefixIcon:const Icon(Icons.key),
=======
                prefixIcon: const Icon(Icons.key),
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPass = !showPass;
                    });
                  },
                  icon:
                      Icon(showPass ? Icons.visibility_off : Icons.visibility),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButon(
              text: 'Register',
              onTap: () {
                if (formKey.currentState!.validate()) {
<<<<<<< HEAD
                   RegisterApi().userRegister(context: context, userNameCont: userName, emailcont: emailCont, passcont: passCont);
                  // GoRouter.of(context).push(AppRouter.kHomeView);
                }
               
=======
                  RegisterApi().userRegister(
                      context: context,
                      userNameCont: userName,
                      emailcont: emailCont,
                      passcont: passCont);
                  // GoRouter.of(context).push(AppRouter.kHomeView);
                }
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
              },
            ),
          ],
        ),
      ),
    );
  }
}
