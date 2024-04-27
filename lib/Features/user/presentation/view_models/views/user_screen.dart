import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'widgets/login_body.dart';
import 'widgets/registeration_body.dart';

class TotalScreen extends StatefulWidget {
  const TotalScreen({Key? key}) : super(key: key);

  @override
  State<TotalScreen> createState() => _TotalScreenState();
}

class _TotalScreenState extends State<TotalScreen> {
  int _index = 0;
  List<String> get _listGenderText => ["Login", "Register"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              Image.asset(
                AssetsData.splashImage,
                width: 300,
              ),
              const SizedBox(
                height: 70,
              ),
              Center(
                child: FlutterToggleTab(
                  width: MediaQuery.of(context).size.width / 4.25,
                  height: 40, // Divide width equally for two labels
                  borderRadius: 15,
                  selectedIndex: _index,
                  selectedTextStyle: Styles.textStyle16.copyWith(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                  unSelectedTextStyle:
                      Styles.textStyle14.copyWith(color: Colors.black45),
                  selectedBackgroundColors: [borderColor],
                  labels: _listGenderText,
                  selectedLabelIndex: (index) {
                    setState(() {
                      _index = index;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _index == 0 ? LoginScreen() : Registeration(),
            ],
          ),
        ),
      ),
    );
  }
}
