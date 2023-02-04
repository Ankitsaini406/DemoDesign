import 'package:flutter/material.dart';

class AppbarPage extends StatefulWidget {
  const AppbarPage({super.key});

  @override
  State<AppbarPage> createState() => _AppbarPageState();
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Gym',
    'Football',
    'Baseball',
    'Running',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear),
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back),
      );

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.normal),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        });
  }
}

class _AppbarPageState extends State<AppbarPage> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.redAccent,
      title: const Text("Hi, Sir"),
      actions: [
        IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: MySearchDelegate(),
            );
          },
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        )
      ],
      bottom: const TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        tabs: [
          Tab(
            // text: 'Gym',
            icon: Icon(Icons.sports_gymnastics),
          ),
          Tab(
            // text: 'Games',
            icon: Icon(Icons.sports_basketball),
          ),
          Tab(
            // text: 'Trainer',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
