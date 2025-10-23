import 'package:flutter/material.dart';

class WaterTrackerScreen extends StatefulWidget {
  const WaterTrackerScreen({super.key});

  @override
  _WaterTrackerScreenState createState() => _WaterTrackerScreenState();
}

class _WaterTrackerScreenState extends State<WaterTrackerScreen> {
  int _glasses = 0;

  void _incrementGlasses() {
    setState(() {
      _glasses++;
    });
  }

  void _decrementGlasses() {
    setState(() {
      if (_glasses > 0) {
        _glasses--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'How many glasses of water did you drink today?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              '$_glasses',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  iconSize: 50,
                  onPressed: _decrementGlasses,
                ),
                const SizedBox(width: 40),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  iconSize: 50,
                  onPressed: _incrementGlasses,
                ),
              ],
            ),
             const SizedBox(height: 40),
            const Text(
                "Stay hydrated, stay healthy!",
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
          ],
        ),
      ),
    );
  }
}
