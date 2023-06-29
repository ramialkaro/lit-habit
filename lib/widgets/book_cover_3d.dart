import 'package:flutter/material.dart';

class BookCover3D extends StatefulWidget {
  final String imageUrl;

  BookCover3D({
    required this.imageUrl,
  });

  @override
  State<BookCover3D> createState() => _BookCover3DState();
}

class _BookCover3DState extends State<BookCover3D> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 200,
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(2, 2, 0.001)
          ..rotateY(0.25),
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2.0, 4.0),
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
