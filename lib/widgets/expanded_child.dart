import 'package:audioplayers/audioplayers.dart';
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
    late AudioPlayer player = AudioPlayer();

    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () async {
          await player.stop();
          await player.setSource(AssetSource('assets_note$id.wav'));
          await player.resume();
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
