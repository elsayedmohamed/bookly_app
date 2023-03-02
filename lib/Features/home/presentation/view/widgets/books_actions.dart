import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            backGroundColor: Colors.white,
            fontSize: 16,
            text: '19.99€',
            onPressed: () {},
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            backGroundColor: const Color(0xffEF8262),
            fontSize: 14,
            text: 'Preview free books',
            onPressed: () {},
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}
