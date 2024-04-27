import 'package:bookly_application/Features/home/presenations/views/widgets/custom_FilmItem.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_rating.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/userRating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class FilmDetailSection extends StatelessWidget {
  const FilmDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomFilmImage(),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          'Divergent',
          style: Styles.textStyle30,
        ),
        /*  const SizedBox(
          height: 6,
        ), */
        /*  Opacity(
          opacity: 0.7,
          child: Text(
            'Neil Burger',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ), */
        const SizedBox(
          height: 18,
        ),
        userRating(),
        const SizedBox(
          height: 25,
        ),
        //const FilmsAction(),
      ],
    );
  }
}
