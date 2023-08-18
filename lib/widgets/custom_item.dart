import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/color_model.dart';

class CustomItem extends StatelessWidget {
  CustomItem({
    super.key,
    required this.tunes,
  });

  ColorModel tunes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunes.PlayAudio();
        },
        child: Container(
          color: tunes.color,
          width: double.infinity,
        ),
      ),
    );
  }
}
