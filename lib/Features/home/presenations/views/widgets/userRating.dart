import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../user/services/rating_api.dart';

class userRating extends StatefulWidget {
  const userRating({Key? key,}) ;
  @override
  State<userRating> createState() => _userRetingState();
}

class _userRetingState extends State<userRating> {
  String rating = '0';
  String rateComment = 'Good';
  double? lastRating;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingBar.builder(
          glow: true,
          initialRating: 0,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => FaIcon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (value) {
            setState(() {
              rating = value.toString();
            });
          },
        ),
        const SizedBox(
          height: 25,
        ),
        CustomButton(
          text: 'Submit rating',
          backgroundColor: Color(0xffef8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          onPressed: () {
            RatingApi().userRate(
              context: context, // Replace with actual movie name
              rating: rating,
            );
          },
        ),
      ],
    );
  }
}
