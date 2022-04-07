import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:xylophone/keysConstructor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]); // hide status bar

  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then(
    (value) => runApp(
      MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: <Widget>[
          Row(
            children: buildPianoKeys(),
          ),
          positionedButtonsBlack(35, 'cs'),
          positionedButtonsBlack(90, 'eb'),
          positionedButtonsBlack(195, 'fs'),
          positionedButtonsBlack(250, 'gs'),
          positionedButtonsBlack(305, 'bb'),
          positionedButtonsBlack(415, 'cs'),
          positionedButtonsBlack(470, 'eb'),
          positionedButtonsBlack(575, 'fs'),
          positionedButtonsBlack(630, 'gs'),
          positionedButtonsBlack(685, 'bb'),
        ],
      ),
    );
  }
}
