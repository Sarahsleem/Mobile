import 'package:bookly_application/Features/home/presenations/views/widgets/first_films_list_body.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class FirstFilmsListView extends StatelessWidget {
  const FirstFilmsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstFilmsListBody(),
    );
  }
}
