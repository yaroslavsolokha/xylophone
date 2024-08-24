import 'package:flutter/material.dart';

class ExpandedChild extends StatelessWidget {
  const ExpandedChild({
    super.key,
    required this.id,
    required this.color,
  });

  final int id;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          print('clicked');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
