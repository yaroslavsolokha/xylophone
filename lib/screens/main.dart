import 'package:flutter/material.dart';
import 'package:xylophone/widgets/expanded_child.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // List of colors for the xylophone keys
  static const List<Color> keyColors = [
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.green,
    Colors.purple,
  ];

  // Method to generate ExpandedChild widgets
  List<Widget> _buildKeys() {
    return List.generate(keyColors.length, (index) {
      return ExpandedChild(id: index + 1, color: keyColors[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text(
          'Xylophone',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _buildKeys(),
        ),
      ),
    );
  }
}
