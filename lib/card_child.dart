import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {
  final IconData icon;
  final String label;

  CardChild({
    @required this.icon,
    @required this.label,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
