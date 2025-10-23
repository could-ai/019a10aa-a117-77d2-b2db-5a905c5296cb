import 'package:flutter/material.dart';

class MealPlannerScreen extends StatelessWidget {
  const MealPlannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Planner'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildMealCard(context, 'Breakfast', 'e.g. Oatmeal with fruits', Icons.free_breakfast),
          _buildMealCard(context, 'Lunch', 'e.g. Grilled chicken salad', Icons.lunch_dining),
          _buildMealCard(context, 'Dinner', 'e.g. Salmon with roasted vegetables', Icons.dinner_dining),
          _buildMealCard(context, 'Snacks', 'e.g. Greek yogurt, nuts', Icons.fastfood),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
               // Navigate to recipes screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipesScreen()));
            },
            child: const Text('Find Healthy Recipes'),
          ),
        ],
      ),
    );
  }

  Widget _buildMealCard(BuildContext context, String title, String example, IconData icon) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 40, color: Theme.of(context).colorScheme.primary),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(example),
        trailing: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            // TODO: Implement functionality to add/edit meal details
          },
        ),
      ),
    );
  }
}

// Placeholder for RecipesScreen
class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy Recipes'),
      ),
      body: const Center(
        child: Text('Healthy recipes coming soon!'),
      ),
    );
  }
}
