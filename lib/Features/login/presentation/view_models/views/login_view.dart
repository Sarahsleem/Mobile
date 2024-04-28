import 'package:bookly_application/Features/login/presentation/view_models/views/widgets/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginViewScreen extends StatelessWidget {
  const LoginViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body :LoginScreenBody(),
    );
  }
}