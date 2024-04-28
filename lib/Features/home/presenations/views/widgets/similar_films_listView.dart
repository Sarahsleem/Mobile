import 'package:bookly_application/Features/home/presenations/views/widgets/custom_FilmItem.dart';
import 'package:flutter/material.dart';

class SimilarFilmsListView extends StatelessWidget {
  const SimilarFilmsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomFilmImage(),
          );
        }),
      ),
    );
  }
}
