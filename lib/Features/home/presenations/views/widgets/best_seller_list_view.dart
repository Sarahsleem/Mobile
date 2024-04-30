import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_listViewItem.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: ((context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(title: '', director: '', imagePath: '',),
        );
      }),
    );
  }
}
