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
  late final AudioPlayer player;

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();
    super.dispose();
  }

  Future<void> _playSound() async {
    try {
      await player.stop(); // Stop any currently playing sound
      await player.setSource(AssetSource('assets_note${widget.id}.wav'));
      await player.resume();
    } catch (e) {
      print('Error playing sound: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: _playSound,
        child: Container(
          color: widget.color,
        ),
      ),
    );
  }
}
