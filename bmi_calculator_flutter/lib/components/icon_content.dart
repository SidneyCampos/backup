import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableGenderCard extends StatelessWidget {
  const ReusableGenderCard(this.iconGender, this.label, {Key? key})
      : super(key: key);

  final IconData iconGender;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconGender,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
