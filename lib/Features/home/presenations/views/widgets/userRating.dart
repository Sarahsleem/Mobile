import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class userRating extends StatefulWidget {
  const userRating({super.key});

  @override
  State<userRating> createState() => _userRetingState();
}

class _userRetingState extends State<userRating> {
  double rating = 3;
  String rateComment = 'Good';
  @override
  Widget build(BuildContext context) {
    return  RatingBar.builder(
                    glow: true,
                    initialRating: 3,
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
                        rating = value;
                        
                      });
                    },
                  );
  }
}