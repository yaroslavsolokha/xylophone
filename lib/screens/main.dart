import 'package:flutter/material.dart';
import 'package:xylophone/widgets/expanded_child.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text(
            'Xylophone',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ExpandedChild(id: 1, color: Colors.red),
              ExpandedChild(id: 2, color: Colors.orange),
              ExpandedChild(id: 3, color: Colors.blue),
              ExpandedChild(id: 4, color: Colors.yellow),
              ExpandedChild(id: 5, color: Colors.pink),
              ExpandedChild(id: 6, color: Colors.green),
              ExpandedChild(id: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
