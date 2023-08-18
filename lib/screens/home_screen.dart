import 'package:flutter/material.dart';
import 'package:tunes_player_app/constants.dart';
import 'package:tunes_player_app/widgets/custom_item.dart';
import 'package:tunes_player_app/models/color_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ColorModel> colors = [
      ColorModel(color: Colors.red, sound: 'note1.wav'),
      ColorModel(color: Colors.orange, sound: 'note2.wav'),
      ColorModel(color: Colors.amber, sound: 'note3.wav'),
      ColorModel(color: Colors.green, sound: 'note4.wav'),
      ColorModel(color: Colors.teal, sound: 'note5.wav'),
      ColorModel(color: Colors.blue, sound: 'note6.wav'),
      ColorModel(color: Colors.purple, sound: 'note7.wav'),
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppBarColor,
          title: const Text(
            'Tunes App',
          ),
        ),
        body: Column(
          children: colors
              .map((e) => CustomItem(
                    tunes: e,
                  ))
              .toList(),
        ));
  }
}
