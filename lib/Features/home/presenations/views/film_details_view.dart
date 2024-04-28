<<<<<<< HEAD

=======
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
import 'package:bookly_application/Features/home/presenations/views/widgets/film_detais_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilmDetailsView extends StatelessWidget {
  const FilmDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FilmDetailsViewBody(),
      ),
    );
  }
}
