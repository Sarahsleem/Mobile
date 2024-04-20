import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_list_view.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/custom_appBar.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/featured_listView.dart';
import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:bookly_application/core/utils/assets.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstFilmsListBody extends StatelessWidget {
  const FirstFilmsListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Recommended for you',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}