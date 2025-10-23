import 'package:flutter/material.dart';

class DailyMotivation extends StatelessWidget {
  const DailyMotivation({super.key});

  @override
  Widget build(BuildContext context) {
    // In a real app, this would fetch a random quote
    const quote = "Believe you can and you're halfway there.";
    const author = "Theodore Roosevelt";

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '"$quote"',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 8),
            Text(
              '- $author',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
