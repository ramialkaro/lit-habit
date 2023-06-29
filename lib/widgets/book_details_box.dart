import 'package:flutter/material.dart';

Widget buildDetailBox(String label, num value, BuildContext context) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value.toString(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 4),
          Text(
            label.toUpperCase(),
            style: const TextStyle(fontSize: 12, color: Colors.black38),
          ),
        ],
      ),
    ),
  );
}
