import 'package:flutter/material.dart';

import 'package:bookly_app/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';

import 'books_actions.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomBookDetailsAppBar(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * .2),
                      child: const CustomListViewItem(),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'The Jungle Book',
                      style: Styles.textStyle30,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Rudyard Kipling',
                        style: Styles.textStyle18
                            .copyWith(fontStyle: FontStyle.italic),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const BookRating(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const BooksActions(),
                    const Expanded(
                      child: SizedBox(
                        height: 14,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You can also like',
                        style: Styles.textStyle16,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const SimilarBooksListView(),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

