import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorModel {
  final String sound;
  final Color color;

  ColorModel({
    required this.sound,
    required this.color,
  });

  PlayAudio() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
