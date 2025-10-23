import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              'John Doe', // Example name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 24),
          ListTile(
            leading: const Icon(Icons.height),
            title: const Text('Height'),
            subtitle: const Text('180 cm'), // Example value
            trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
          ),
          ListTile(
            leading: const Icon(Icons.monitor_weight),
            title: const Text('Weight'),
            subtitle: const Text('75 kg'), // Example value
            trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
          ),
          ListTile(
            leading: const Icon(Icons.cake),
            title: const Text('Age'),
            subtitle: const Text('30 years'), // Example value
            trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
          ),
          ListTile(
            leading: const Icon(Icons.flag),
            title: const Text('Goal'),
            subtitle: const Text('Lose 5 kg'), // Example value
            trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: (value) {
              themeProvider.toggleTheme(value);
            },
            secondary: const Icon(Icons.brightness_6),
          ),
        ],
      ),
    );
  }
}
