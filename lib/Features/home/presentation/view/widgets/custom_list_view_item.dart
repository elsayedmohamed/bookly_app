import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  final String imgUrl;

  const CustomListViewItem({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                imgUrl,
              ),
              fit: BoxFit.fill),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          color: Colors.red,
        ),
      ),
    );
  }
}
