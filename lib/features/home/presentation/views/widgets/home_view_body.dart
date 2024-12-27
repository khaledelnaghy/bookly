import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
 import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            logoImage: AssetsData.logo,
            icon: Icons.search,
          ),
          FeaturedBoxListView(),
          const SizedBox(height: 40,),  
          Text("Best Seller" , style: Styles.titleMeduim),
        ],
      ),
    );
  }
}
