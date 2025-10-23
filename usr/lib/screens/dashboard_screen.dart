import 'package:flutter/material.dart';
import '../widgets/daily_motivation.dart';
import '../widgets/progress_chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Dashboard'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DailyMotivation(),
            const SizedBox(height: 24),
            Text(
              "Your Weekly Progress",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16),
            const ProgressChart(),
            const SizedBox(height: 24),
            const Center(
              child: Text(
                "Keep going! Your health matters!",
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 40),
             const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Created by The Digital King 👑",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
