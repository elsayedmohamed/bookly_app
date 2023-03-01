import 'custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 1,
        child: ListView.builder(
          itemCount: 60,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right:8.0),
              child: CustomListViewItem(),
            );
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
