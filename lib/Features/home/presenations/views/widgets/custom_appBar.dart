import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../search/search_product.dart';

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
            width: 75,
            child: Image.asset(
              AssetsData.logo,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: ProductSearch());
              //  GoRouter.of(context).push(AppRouter.kSearchView);
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
