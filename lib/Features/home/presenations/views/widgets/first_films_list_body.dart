import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_list_view.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/custom_appBar.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/featured_listView.dart';
<<<<<<< HEAD
import 'package:bookly_application/Features/home/presenations/views/widgets/firstfilmsListView.dart';
=======
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:bookly_application/core/utils/assets.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class FirstFilmsListBody extends StatelessWidget {
  const FirstFilmsListBody({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return   CustomScrollView(
=======
    return CustomScrollView(
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
<<<<<<< HEAD
            children:  [
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 30),
                child: Padding(
      padding:  EdgeInsets.only(
        top: 40,
        bottom: 20,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 75,
              width: 75,
            child: Image.asset(
              AssetsData.logo,
              
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.klogin);
            },
            icon: const Icon(
              Icons.logout,
              size: 22,
            ),
          ),
        ],
      ),
    ),
=======
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 75,
                        width: 75,
                        child: Image.asset(
                          AssetsData.logo,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.klogin);
                        },
                        icon: const Icon(
                          Icons.logout,
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                ),
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
              ),
              const SizedBox(
                height: 8,
              ),
<<<<<<< HEAD
               Padding(
=======
              Padding(
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Give us a taste of your taste \n  Kindly rate the following films',
                      style: Styles.textStyle18,
                    ),
<<<<<<< HEAD
                    TextButton(onPressed: (){
                     GoRouter.of(context).push(AppRouter.kHomeView);
                    },
                    child: const Text(
                      'Done',
                      style: Styles.textStyle18,
                    ),
=======
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kHomeView);
                      },
                      child: const Text(
                        'Done',
                        style: Styles.textStyle18,
                      ),
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
                    )
                  ],
                ),
              ),
<<<<<<< HEAD
           const   SizedBox(
=======
              const SizedBox(
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
                height: 5,
              ),
            ],
          ),
        ),
<<<<<<< HEAD
         SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: firstfilmsListView(),
=======
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
          ),
        ),
      ],
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
