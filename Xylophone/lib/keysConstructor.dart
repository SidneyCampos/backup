import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();

Widget pianoKey(String note) {
  return Expanded(
    child: ElevatedButton(
      onPressed: () {
        player.setAsset('assets/$note.wav');
        player.play();
        print(note);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        enableFeedback: false,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1,
            )),
      ),
    ),
  );
}

Widget pianoKeyBlack(String note) {
  return SizedBox(
    height: 200,
    width: 40,
    child: ElevatedButton(
      onPressed: () {
        player.setAsset('assets/$note.wav');
        player.play();
        print(note);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        enableFeedback: false,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.black,
              width: 1,
            )),
      ),
    ),
  );
}

List<Widget> buildPianoKeys() {
  final keys = <Widget>[];
  for (var i = 0; i < 14; i++) {
    if (i == 0 || i == 7) keys.add(pianoKey('c'));
    if (i == 1 || i == 8) keys.add(pianoKey('d'));
    if (i == 2 || i == 9) keys.add(pianoKey('e'));
    if (i == 3 || i == 10) keys.add(pianoKey('f'));
    if (i == 4 || i == 11) keys.add(pianoKey('g'));
    if (i == 5 || i == 12) keys.add(pianoKey('a'));
    if (i == 6 || i == 13) keys.add(pianoKey('b'));
  }
  return keys;
}

Widget positionedButtonsBlack(double position, String note) {
  return Positioned(
    left: position,
    child: pianoKeyBlack(note),
  );
}
