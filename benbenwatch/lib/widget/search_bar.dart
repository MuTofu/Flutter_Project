import 'package:benbenwatch/widget/item_home.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends SearchDelegate {
  List<String> sugestResult = [
    'Majo no Tabi Tabi',
    'Jujutsu kaisen',
    'Majo no Tabi tabi S2',
  ];

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (){
        close(context, null);

      },
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: (){
        query = '';
      },
    );
    return null;

  }

  @override
  Widget buildResults(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
            height: 200,
            child: ItemHomePage()));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggest = sugestResult.where((sugestResult) {
      final result = sugestResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggest.length,
        itemBuilder: (context, index) {
          final sugesstion = suggest[index];

          return ListTile(
            title: Text(
                sugesstion,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onTap: (){
              query = sugesstion;
              showResults(context);
            },
          );

        });
  }
}