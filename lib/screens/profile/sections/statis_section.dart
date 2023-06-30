import 'package:flutter/material.dart';

class StatisSection extends StatelessWidget {
  const StatisSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [
          Text(
            "29",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 8,
          ),
          Text("AGE ", style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
      Column(
        children: [
          Text(
            "16",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 8,
          ),
          Text("READ BOOKS", style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
      Column(
        children: [
          Text(
            "154 €",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "TOTAL COST",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    ]);
  }
}
