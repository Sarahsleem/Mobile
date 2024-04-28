<<<<<<< HEAD
=======
import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_list_view.dart';
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
<<<<<<< HEAD
=======
import '../../../../search/search_product.dart';
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 20,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 75,
<<<<<<< HEAD
              width: 75,
            child: Image.asset(
              AssetsData.logo,
              
=======
            width: 75,
            child: Image.asset(
              AssetsData.logo,
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
<<<<<<< HEAD
              GoRouter.of(context).push(AppRouter.kSearchView);
=======
              showSearch(context: context, delegate: ProductSearch());
              //  GoRouter.of(context).push(AppRouter.kSearchView);
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
          //Spacer(),
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
    );
  }
}
