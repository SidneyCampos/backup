import 'package:bmi_calculator_flutter/screens/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: const Center(
          child: Text(
            'CALCULATE',
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
