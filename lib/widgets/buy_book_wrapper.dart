import 'package:flutter/material.dart';
import 'package:lithabit/models/books.dart';
import 'book_cover_3d.dart';
import 'buying_book_details.dart';

class BuyBookWrappper extends StatelessWidget {
  final Book book;

  const BuyBookWrappper({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BuyingBookDetails(book: book)),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BookCover3D(
            imageUrl: book.imageUrl,
          ),
          Text(
            book.price <= 0 ? "Free" : "${book.price} €",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
