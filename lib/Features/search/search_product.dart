import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_listViewItem.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/similar_films_listView.dart';
import 'package:bookly_application/Features/search/data/search.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../core/errors/failures.dart';
import '../home/presenations/views/widgets/best_seller_list_view.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
    throw UnimplementedError();
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    return BestSellerListView();
    throw UnimplementedError();
  }




  @override
  Widget buildResults(BuildContext context) {
    // Get the query
    final String query = this.query;

    // Navigate to the SearchResultPage and pass the query as a parameter
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchListView(query: query),
      ),
    );

    return Text("data");
  }

}
