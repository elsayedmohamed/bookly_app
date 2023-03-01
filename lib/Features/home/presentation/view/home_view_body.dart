import 'widgets/best_seller_list_view.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/featured_list_view.dart';
import '../../../../core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 10,
                ),
                Text('Best Seller', style: Styles.textStyle18),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
       const SliverFillRemaining(
            child: BestSellerListView(),
          ),   
        ],
      ),
    );
  }
}
