import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeBuilder extends StatelessWidget {
  const BarcodeBuilder({Key? key, required this.value}) : super(key: key);

  final String value;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: SizedBox(
          height: 100,
          child: BarcodeWidget(
            barcode: Barcode.isbn(),
            data: value,
          ),
        ),
      ),
    );
  }
}
