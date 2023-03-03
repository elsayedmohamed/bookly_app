import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 1,
        child: ListView.builder(
          itemCount: 60,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CustomListViewItem(imgUrl: "https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE5c8Ba?ver=d0ed"),
            );
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
