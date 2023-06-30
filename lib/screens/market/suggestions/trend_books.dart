import 'package:flutter/material.dart';
import '../../../api/generated_books.dart';
import '../../../models/books.dart';
import '../../../widgets/buy_book_wrapper.dart';

class TrendBooks extends StatelessWidget {
  const TrendBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Trend Now",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _buildTrendBookList(),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildTrendBookList() {
    List<Book> books = getAllBooks();

    return books.take(4).map((book) {
      return Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: BuyBookWrappper(book: book),
      );
    }).toList();
  }
}
