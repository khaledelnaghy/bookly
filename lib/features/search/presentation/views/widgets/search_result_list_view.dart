import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
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
          child: BookListViewItem(),
        );
      },
      itemCount: 10,
    );
  }
}
