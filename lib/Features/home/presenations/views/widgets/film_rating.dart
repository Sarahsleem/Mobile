import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilmRating extends StatelessWidget {
  const FilmRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(
            0xFFFFDD4F,
          ),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(245)',
            style: Styles.textStyle14.copyWith(),
          ),
        ),
      ],
    );
  }
}
