import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:bookly_application/core/utils/assets.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              SizedBox(
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width*0.75,
            child: Image.asset(AssetsData.splashImage)),
          const SizedBox(
            height: 4,
          ), 
          Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: MaterialButton(
                      onPressed: () {
                       GoRouter.of(context).push(AppRouter.kHomeView);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Continue with Gmail",
                            style: Styles.textStyle18.copyWith(
                               fontFamily: kAlegreya,
                               color: Colors.black,
                            ),
                          ),
                          const SizedBox( width: 5, ),
                          FaIcon(FontAwesomeIcons.google,
                          color: Colors.black), 
                        ],
                      )),
                ),
          ],
        ),
      ),
    );
  }
}