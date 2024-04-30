import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/custom_film_details_appBar.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_detail_section.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/userRating.dart';
import 'package:bookly_application/core/utils/assets.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FilmDetailsShow extends StatelessWidget {
  const FilmDetailsShow({super.key, required this.film});
 final Films film;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    print('in the code');
    print(film.title);
    return 
      
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children:  [
                CustomFilmDetailsAppBar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
           /* image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),  */
        ),
         child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(film.poster)),
        
      ),
    ),
        ),
        const SizedBox(
          height: 35,
        ),
         Text(

          film.title,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
       
        const SizedBox(
          height: 18,
        ),
        userRating(),
        const SizedBox(
          height: 25,
        ),
       
      ],
    ),
               
              
              ],
            ),
          ),
        );
      
    
  }
}