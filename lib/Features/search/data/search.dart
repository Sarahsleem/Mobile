import 'package:bookly_application/Features/search/data/search_model.dart';
import 'package:bookly_application/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../home/presenations/views/widgets/best_seller_listViewItem.dart';
class SearchListView extends StatelessWidget {
 final String query;
  const SearchListView({required this.query});
 Future<Either<Failure, List<SearchModel>>> searchData($query) async {
   String url = 'https://backend-in-db-project.onrender.com/search';
   Map<String, String> requestBody = {'title': query};

   try {
     http.Response response = await http.post(Uri.parse(url), body: requestBody);

     if (response.statusCode == 200) {
       List<dynamic> data = json.decode(response.body);
       List<Map<String, dynamic>> searchDataList = [];
       for (var item in data) {
         searchDataList.add(Map<String, dynamic>.from(item));
       }

       return Right(searchDataList.cast<SearchModel>());
     } else {
       throw Exception('Failed to load data: ${response.statusCode}');
     }
   } catch (e) {
     print('Error: $e');
     return left(ServerFailure(key as String));
   }
 }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: ((context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(films: [],),
        );
      }),
    );
  }

}

