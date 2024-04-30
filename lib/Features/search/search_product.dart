import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_listViewItem.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/similar_films_listView.dart';
import 'package:bookly_application/Features/search/data/search.dart';

import 'package:bookly_application/Features/search/data/search_model.dart';
import 'package:bookly_application/Features/search/presentation/views/widgets/search_view_body.dart';


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
    return const BestSellerListView();
    throw UnimplementedError();
  }




  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Text('Please enter a search query'),
      );
    } else {
      return FutureBuilder<List<SearchModel>>(
        future: APIService.search(query),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final List<SearchModel>? searchResults = snapshot.data;
            if (searchResults != null && searchResults.isNotEmpty) {
              return ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return BestSellerListViewItem(
                    // Pass necessary data to the BestSellerListViewItem
                    title: searchResults[index].title ?? "",
                    director: searchResults[index]. tmdbid?? "",
                    imagePath: searchResults[index].poster ?? "",
                    // Add more parameters as needed
                  );
                },
              );
            } else {
              return Center(child: Text('No results found'));
            }
          }
        },
      );
    }
  }

}


