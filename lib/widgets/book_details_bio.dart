import 'package:flutter/material.dart';
import 'package:lithabit/models/books.dart';

import 'barcode_builder.dart';

class BookDetailsBio extends StatelessWidget {
  const BookDetailsBio({Key? key, required this.book}) : super(key: key);

  final Book book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getCategoryString(book.category),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                book.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      BarcodeBuilder(value: book.isbn),
                );
              },
              child: const Icon(Icons.qr_code_2, size: 40),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "by ${book.authorName}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black38,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          book.description,
        ),
      ],
    );
  }
}
