import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Right'),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Left'),
            ),
          ],
        ),
      ],
    );
  }
}
