import 'package:bookly_application/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presenations/views/widgets/best_seller_listViewItem.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
<<<<<<< HEAD
       // leading: ,
        actions: [],
        
      ),
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchText(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    ),
=======
        // leading: ,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomSearchText(),
            SizedBox(
              height: 16,
            ),
            Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(child: SearchResultListView()),
          ],
        ),
      ),
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: ((context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
<<<<<<< HEAD
          child: BestSellerListViewItem(films: [],),
=======
          child: BestSellerListViewItem(),
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
        );
      }),
    );
  }
}
