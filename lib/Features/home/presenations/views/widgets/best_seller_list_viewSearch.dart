import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_listViewItem.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_listViewItem_search.dart';
import 'package:flutter/material.dart';

class BestSellerListViewSearch extends StatelessWidget {
  const BestSellerListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: ((context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItemSearch(title: '', director: '', imagePath: '',),
        );
      }),
    );
  }
}
