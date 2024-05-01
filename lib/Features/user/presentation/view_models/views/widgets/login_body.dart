import 'package:bookly_application/Features/user/presentation/repos/loginApi.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../../constants.dart';
import 'custom_checktile.dart';
import 'custom_field.dart';
import 'custom_main_botton.dart';
import 'custom_main_textfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  TextEditingController emailCont = TextEditingController();

  TextEditingController passCont = TextEditingController();
  bool isLoading = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
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
                /* CustomChecktile(
                  preText: 'Remember me',
                  sufText: 'Forget password?',
                  onTap: () {
                    GoRouter.of(context).push('/ForgetPass');
                  },
                ), */
                const SizedBox(
                  height: 50,
                ),
                CustomButon(
                  text: 'Login',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print('login');
                     
                     
                      setState(() { isLoading = true;});
                       print('$isLoading');
                       LoginUserApi().userLogin(
                          context: context,
                          emailcont: emailCont,
                          passcont: passCont);
                      
                      
                      setState(() {isLoading = false;}); 
                       print('$isLoading');
                      // GoRouter.of(context).push(AppRouter.kHomeView);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
