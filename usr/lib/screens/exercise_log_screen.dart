import 'package:flutter/material.dart';

class ExerciseLogScreen extends StatelessWidget {
  const ExerciseLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise Log'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Log your workout for today!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Example workout entry
            _buildWorkoutEntry(context, 'Running', '30 min', '300 kcal'),
            _buildWorkoutEntry(context, 'Weightlifting', '45 min', '400 kcal'),
            const Spacer(),
            const Text(
              "Your health matters!",
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Add functionality to log a new workout
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildWorkoutEntry(BuildContext context, String activity, String duration, String calories) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.fitness_center, size: 40),
        title: Text(activity),
        subtitle: Text('Duration: $duration'),
        trailing: Text('Calories: $calories'),
      ),
    );
  }
}
