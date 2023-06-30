import 'package:flutter/material.dart';

class LevelProgressSection extends StatelessWidget {
  const LevelProgressSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "LV 5",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Text(
              "LV 6",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const LinearProgressIndicator(
          value: 0.7,
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "500 xp",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "650 xp",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ],
    );
  }
}
