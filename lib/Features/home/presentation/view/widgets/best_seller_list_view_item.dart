import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // GoRouter.of(context).push('/BookDetailsView');

        context.go('/bookDetailsView');
      },
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .30,
              child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          AssetsData.testBook1,
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Icon(
                        FontAwesomeIcons.solidStar,
                        color: Color(0xffFFDD4F),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '(2458)',
                        style: Styles.textStyle14.copyWith(
                          color: const Color(0xff707070),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
