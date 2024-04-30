
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_rating.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart'; // Import File class

class BestSellerListViewItem extends StatelessWidget {

  final String title;
  final String director;
  final String imagePath; // Assuming this is a local file path

  const BestSellerListViewItem({
    required this.title,
    required this.director,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      }),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            Image.network(
              imagePath,
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child; // Image is fully loaded
                } else {
                  return Center(
                    child: CircularProgressIndicator( // Display a progress indicator while loading
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes as int)
                          : null,
                    ),
                  );
                }
              },
              errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                return Text('Failed to load image'); // Display an error message if image fails to load
              },
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      title,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kAlegreya,

  const BestSellerListViewItem({super.key, required this.films});
 final List<Films> films;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: films.length,
      itemBuilder: (context,index) {
        final film =films[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: GestureDetector(
            onTap: (() {
              print(film.movieId);
              setMovieName(film.title);
              GoRouter.of(context).push(AppRouter.kBookDetailsView);
            }),
            child: SizedBox(
              height: 120,
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 2.5 / 4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),


                      ),
                      child: FittedBox(child: Image.network(film.poster),fit: BoxFit.fill,),
                    ),
                  ),
                  const SizedBox(

                    height: 3,
                  ),
                  Text(
                    director,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,

                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            film.title,
                            style: Styles.textStyle20.copyWith(
                              fontFamily: kAlegreya,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                         Text(
                          film.cast.first,
                          style: Styles.textStyle14,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          film.genres.first,
                          style: Styles.textStyle14,
                        ),

                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
