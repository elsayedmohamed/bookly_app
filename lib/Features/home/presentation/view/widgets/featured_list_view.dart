// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';

import 'custom_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CustomListViewItem(
                      imgUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            error: state.failureMessage,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
