import 'package:bookly_application/Features/home/presenations/views/widgets/similar_films_listView.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarFilmsSection extends StatelessWidget {
  const SimilarFilmsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarFilmsListView(),
      ],
    );
  }
}
