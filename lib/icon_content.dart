import 'package:flutter/material.dart';

const TextStyle labelTextStyle =
    TextStyle(color: Color(0xFF8D8E98), fontSize: 18);

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.label});

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
