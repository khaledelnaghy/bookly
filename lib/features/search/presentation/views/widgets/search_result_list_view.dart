 import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("data"),
          // BookListViewItem(),
        );
      },
      itemCount: 10,
    );
  }
}
