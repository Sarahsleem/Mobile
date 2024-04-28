
import 'package:bookly_application/Features/home/presenations/views/widgets/Similar_films_section.dart';



import 'package:bookly_application/Features/home/presenations/views/widgets/custom_film_details_appBar.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_detail_section.dart';

import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/widgets/custom_button.dart';


class FilmDetailsViewBody extends StatelessWidget {
  const FilmDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: const [
                CustomFilmDetailsAppBar(),
                FilmDetailSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimilarFilmsSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
