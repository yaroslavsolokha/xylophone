import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ExpandedChild extends StatefulWidget {
  const ExpandedChild({
    super.key,
    required this.id,
    required this.color,
  });

  final int id;
  final Color color;

  @override
  State<ExpandedChild> createState() => _ExpandedChildState();
}

class _ExpandedChildState extends State<ExpandedChild> {
  late AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () async {
          await player.setSource(AssetSource('assets_note1.wav'));
          await player.resume();
        },
        child: Container(
          color: widget.color,
        ),
      ),
    );
  }
}
