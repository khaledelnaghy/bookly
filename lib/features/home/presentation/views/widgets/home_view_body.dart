import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PaddingHorizontal(
                child: CustomAppBar(
                  logoImage: AssetsData.logo,
                  icon: Icons.search,
                ),
              ),
              FeaturedBoxListView(),
              const SizedBox(
                height: 40,
              ),
              PaddingHorizontal(
                  child: Text("Best Seller", style: Styles.textStyle18)),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: PaddingHorizontal(child: BestSellerListView()),
        ),
      ],
    );
  }
}
